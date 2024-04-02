//
// Created by lyc on 24-3-27.
//

//
// Created by lyc on 24-3-27.
//

/*
Authors: Yichao Luo
*/

#include "../src/FloatingPoint/floating-point.h"
#include "../src/FloatingPoint/fp-math.h"
#include <random>
#include <limits>
#include "float_utils.h"

using namespace sci;
using namespace std;

enum class Op { ADD, MUL, DIV, SQRT, CHEAP_ADD, CHEAP_DIV };
Op op = Op::DIV;

bool verbose = true;
IOPack *iopack = nullptr;
OTPack *otpack = nullptr;
FPOp *fp_op = nullptr;
FPMath *fp_math = nullptr;

int sz = 1;
int party = BOB;
string address = "127.0.0.1";
int port = 8000;
uint8_t m_bits = 23, e_bits = 8;

float lb = -1 * std::numeric_limits<float>::max();
float ub = std::numeric_limits<float>::max();

#define f32_get_e(f) ((f & 0x7F800000) >> 23)
#define f32_get_m(f) (f & 0x007FFFFF)
#define f32_get_s(f) (f >> 31)
#define f32_is_denormal_number(f) (f32_get_e(f) == 0 && f32_get_m(f) != 0)
#define f32_is_nan(f) (f32_get_e(f) == 0xff && f32_get_m(f) != 0)
#define f32_is_inf(f) (f32_get_e(f) == 255 && f32_get_m(f) == 0)

//void test_div(float f_2){
//    assert(party == BOB);
//
//    //Convert type from 'float' to 'FPArray'
//    FPArray fp_1 = fp_op->input<float>(ALICE, sz, -1.0, m_bits, e_bits);
//    FPArray fp_2 = fp_op->input<float>(BOB, sz, f_2, m_bits, e_bits);
//
//    //Operate Division
//    FPArray fp_res = fp_op->div(fp_1, fp_2);
//
//    //Output the Result
//    FPArray fp_pub = fp_op->output(PUBLIC, fp_res);
//    vector<float> vf_ = fp_pub.get_native_type<float>();
//    if(verbose){
//        cout << "\n\033[33m f_2(float): \t\t\033[35m" << f_2 << "\n"\
//            << "\033[33m fp_pub(FPArray):\t\033[35m" << fp_pub << "\n"\
//            << "\033[33m vf_[0](vector item):\t\033[35m" << vf_[0] << "\n\033[0m" << endl;
//    }
//
//    //Finish the Func
//}


int main(int argc, char **argv) {
    cout.precision(15);

    //BOB input f2; system use a fake f2
    float f2=4.0;

    ArgMapping amap;
//    amap.arg("p", port, "Port Number");
//    amap.arg("ip", address, "IP Address of server (ALICE)");
//    amap.arg("v", verbose, "Print test inputs/outputs?");
    amap.arg("f", f2, "Input floating-point from BOB.");
    amap.parse(argc, argv);


    //Prepare for the secure FP computation.
    iopack = new IOPack(party, port, address);
    otpack = new OTPack(iopack, party);

    fp_op = new FPOp(party, iopack, otpack);
    fp_math = new FPMath(party, iopack, otpack);

    //Start timing and execute the DIV test.
    auto start = clock_start();
    uint64_t comm_start = iopack->get_comm();
    uint64_t initial_rounds = iopack->get_rounds();
    test_div(fp_op, party, sz, f2, m_bits, e_bits, 1);
    uint64_t comm_end = iopack->get_comm();
    long long t = time_from(start);

    //Output the results.
    cout << "Comm. per operations: " << 8 * (comm_end - comm_start) / sz
         << " bits" << endl;
    cout << "Number of FP ops/s:\t" << (double(sz) / t) * 1e6 << std::endl;
    cout << "Total Time:\t" << t / (1000.0) << " ms" << endl;
    cout << "Num_rounds: " << (iopack->get_rounds() - initial_rounds) << endl;
    cout << "lb: " << lb << endl;
    cout << "ub: " << ub << endl;

    //Finish the func.
    delete iopack;
    delete otpack;
    delete fp_op;
    delete fp_math;
}
