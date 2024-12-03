/*
Authors: Deevashwer Rathee
Copyright:
Copyright (c) 2021 Microsoft Research
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

#include "FloatingPoint/floating-point.h"
#include "FloatingPoint/fp-math.h"
#include <random>
#include <limits>
#include "float_utils.h"

using namespace sci;
using namespace std;

#define f32_get_e(f) ((f & 0x7F800000) >> 23)
#define f32_get_m(f) (f & 0x007FFFFF)
#define f32_get_s(f) (f >> 31)
#define f32_is_denormal_number(f) (f32_get_e(f) == 0 && f32_get_m(f) != 0)
#define f32_is_nan(f) (f32_get_e(f) == 0xff && f32_get_m(f) != 0)
#define f32_is_inf(f) (f32_get_e(f) == 255 && f32_get_m(f) == 0)

enum class Op { ADD, MUL, DIV, SQRT, CHEAP_ADD, CHEAP_DIV };

Op op = Op::DIV;
bool verbose = true;
IOPack *iopack = nullptr;
OTPack *otpack = nullptr;
FPOp *fp_op = nullptr;
FPMath *fp_math = nullptr;
int sz = 3;
int party = 1;
string address = "127.0.0.1";
int port = 8000;
uint8_t m_bits = 23, e_bits = 8;
std::random_device rand_div;
//std::mt19937 generator(rand_div());
std::mt19937 generator(1);
//std::mt19937 generator((int)time(0));
float lb;
float ub;

//检查float型的 x1 和 x2 是否“相等”（最多允许差1）
bool check_limit(float x_1, float x_2, int32_t ULP_limit = 1) {
  if ((x_1 == INFINITY) && (x_2 == -INFINITY))
    return true;
  if ((x_1 == -INFINITY) && (x_2 == INFINITY))
    return true;
  if (x_1 == x_2)
    return true;
  int32_t x_1_int, x_2_int;
  x_1_int = *((int32_t *)&x_1);
  x_2_int = *((int32_t *)&x_2);
  int32_t diff = x_1_int - x_2_int;
  if (diff > ULP_limit || diff < -1 * ULP_limit)
    return false;
  else
    return true;
}


void test_op() {
  assert(party == ALICE || party == BOB);

  // 确定随机数的取值范围
  lb = -1*std::numeric_limits<float>::max(); //负无穷大
  ub = std::numeric_limits<float>::max();    //正无穷大
//  lb = -1000.0;
//  ub = 1000.0;

  // 在范围内生成随机 float 数组：f_1，f_2
  FPArray fp;
  float *f_1 = new float[sz];
  float *f_2 = new float[sz];
  float *f = new float[sz];
  for (int i = 0; i < sz; i++) {
    f_1[i] = sample_float(generator, lb, ub);
    f_2[i] = sample_float(generator, lb, ub);
  }
  cout << endl;

  // 把随机生成的 float 数组分别转换为 FPArray 类型：
  FPArray fp_1 = fp_op->input<float>(ALICE, sz, f_1, m_bits, e_bits);
  FPArray fp_2 = fp_op->input<float>(BOB, sz, f_2, m_bits, e_bits);

  // 分别执行 float 和 FPArray 上的除法
  cout << "DIV" << endl;
  for (int i = 0; i < sz; i++) {
     f[i] = f_1[i] / f_2[i];
  }
  fp = fp_op->div(fp_1, fp_2);


  FPArray fp_pub = fp_op->output(PUBLIC, fp);
  vector<float> f_ = fp_pub.get_native_type<float>();
  for (int i = 0; i < sz; i++) {
    uint32_t f_int_1 = *((uint32_t *)&f_1[i]);
    uint32_t f_int_2 = *((uint32_t *)&f_2[i]);
    uint32_t f_int = *((uint32_t *)&f[i]);
    if (verbose) {
      FPArray fp_i = fp_pub.subset(i, i + 1);
      cout << i << "\t" << f_1[i] << "\t" << f_2[i] << "\t" << f[i] << "\t"
           << f_[i] << "\t" << fp_i << endl;
    }

    if ((op == Op::DIV) && (f_2[i] == 0.0))
      continue;
    if ((f32_is_nan(f_int_1) || f32_is_denormal_number(f_int_1) ||
         f32_is_nan(f_int_2) || f32_is_denormal_number(f_int_2)))
      continue;
    if (f32_is_denormal_number(f_int))
      assert(f_[i] == 0.0);
    else {
      if ((op != Op::CHEAP_ADD && op != Op::CHEAP_DIV) && (m_bits == 23 && e_bits == 8)) {
//        assert(f[i] - f_[i] < 10e-20);
      }
    }
  }
  delete[] f;
  delete[] f_1;
  delete[] f_2;
}


void test_int_to_float() {
  bool signed_ = true;
  FPArray fp;
  uint64_t *f_1 = new uint64_t[sz];
  float *f = new float[sz];
  for (int i = 0; i < sz; i++) {
    uint32_t fint = generator();
    f_1[i] = fint;
  }
  FixArray fx = fp_op->fix->input(ALICE, sz, f_1, signed_, 32, 0);

  cout << "INT TO FLOAT" << endl;
  fp = fp_op->int_to_float(fx, 23, 8);

  FPArray fp_pub = fp_op->output(PUBLIC, fp);
  vector<float> f_ = fp_pub.get_native_type<float>();
  for (int i = 0; i < sz; i++) {
    if (signed_) {
      f[i] = float(int32_t(f_1[i]));
    } else {
      f[i] = float(f_1[i]);
    }
    if (verbose) {
      FPArray fp_i = fp_pub.subset(i, i + 1);
      cout << i << "\t" << f_1[i] << "\t" << f[i] << "\t" << f_[i] << "\t"
           << fp_i << endl;
    }
    assert(f[i] == f_[i]);
  }
  delete[] f;
  delete[] f_1;
}

int main(int argc, char **argv) {
  cout.precision(15);

  ArgMapping amap;

  int int_op = static_cast<int>(op);
  amap.arg("r", party, "Role of party: ALICE/SERVER = 1; BOB/CLIENT = 2");
  amap.arg("p", port, "Port Number");
  amap.arg("ip", address, "IP Address of server (ALICE)");
  amap.arg("o", int_op, "FP Primitve Operation");
  amap.arg("v", verbose, "Print test inputs/outputs?");
  amap.parse(argc, argv);
  op = static_cast<Op>(int_op);

  iopack = new IOPack(party, port, address);
  otpack = new OTPack(iopack, party);

  fp_op = new FPOp(party, iopack, otpack);
  fp_math = new FPMath(party, iopack, otpack);

  // 执行 test_div() 前
  auto start = clock_start();
  uint64_t comm_start = iopack->get_comm();
  uint64_t initial_rounds = iopack->get_rounds();

  //执行 test_div()
  test_op();

  //执行 test_div() 后，计算 + 输出指标
  uint64_t comm_end = iopack->get_comm();
  long long t = time_from(start);
  cout << "Comm. per operations: " << 8 * (comm_end - comm_start) / sz
       << " bits" << endl;
  cout << "Number of FP ops/s:\t" << (double(sz) / t) * 1e6 << std::endl;
  cout << "Total Time:\t" << t / (1000.0) << " ms" << endl;
  cout << "Num_rounds: " << (iopack->get_rounds() - initial_rounds) << endl;
  cout << "lb: " << lb << endl;
  cout << "ub: " << ub << endl;

  delete iopack;
  delete otpack;
  delete fp_op;
  delete fp_math;
}
