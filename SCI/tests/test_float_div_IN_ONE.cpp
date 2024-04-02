//
// Created by lyc on 24-4-2.
//

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


int main(int argc, char **argv) {
    int sz = 1;
    int party = PUBLIC;
    string address = "127.0.0.1";
    int port = 8000;
    uint8_t m_bits = 23, e_bits = 8;
    float f = -1.0;

    ArgMapping amap;
    amap.arg("r", party, "Party");
    amap.arg("f", f, "Input floating-point from this party.");
    amap.parse(argc, argv);


    //Prepare for the secure FP computation.
    IOPack *iopack = new IOPack(party, port, address);
    OTPack *otpack = new OTPack(iopack, party);
    FPOp *fp_op = new FPOp(party, iopack, otpack);


    //Start timing and execute the DIV test.
    auto start = clock_start();
    uint64_t comm_start = iopack->get_comm();
    uint64_t initial_rounds = iopack->get_rounds();
    test_div(fp_op, party, sz, f, m_bits, e_bits, 1);
    uint64_t comm_end = iopack->get_comm();
    long long t = time_from(start);


    //Output the results.
    cout.precision(15);
    cout << "Comm. per operations: " << 8 * (comm_end - comm_start) / sz
         << " bits" << endl;
    cout << "Number of FP ops/s:\t" << (double(sz) / t) * 1e6 << std::endl;
    cout << "Total Time:\t" << t / (1000.0) << " ms" << endl;
    cout << "Num_rounds: " << (iopack->get_rounds() - initial_rounds) << endl;


    //Finish the func.
    delete iopack;
    delete otpack;
    delete fp_op;
}