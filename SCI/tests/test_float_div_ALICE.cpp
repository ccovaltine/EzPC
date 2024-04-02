//
// Created by lyc on 24-3-27.
//

/*
Authors: Yichao Luo
*/

#include "../src/FloatingPoint/floating-point.h"
#include "FloatingPoint/fp-math.h"
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
int party = ALICE;
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


int main(int argc, char **argv) {
    cout.precision(15);

    //ALICE input f1; system use a fake f2
    float f1 = 15.0;

    ArgMapping amap;
//    amap.arg("p", port, "Port Number");
//    amap.arg("ip", address, "IP Address of server (ALICE)");
//    amap.arg("v", verbose, "Print test inputs/outputs?");
    amap.arg("f", f1, "Input floating-point from ALICE.");
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
    test_div(fp_op, party, sz, f1, m_bits, e_bits, 1);
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
