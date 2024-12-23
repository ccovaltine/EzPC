/*
This is an autogenerated file, generated using the EzPC compiler.
*/

#include "emp-sh2pc/emp-sh2pc.h" 
using namespace emp;
using namespace std;
int bitlen = 32;
int party,port;
char *ip = "127.0.0.1"; 
template<typename T> 
vector<T> make_vector(size_t size) { 
return std::vector<T>(size); 
} 

template <typename T, typename... Args> 
auto make_vector(size_t first, Args... sizes) 
{ 
auto inner = make_vector<T>(sizes...); 
return vector<decltype(inner)>(first, inner); 
} 

const uint32_t dim =  (uint32_t)2;


int main(int argc, char** argv) {
parse_party_and_port(argv, &party, &port);
if(argc>3){
  ip=argv[3];
}
cout<<"Ip Address: "<<ip<<endl;
cout<<"Port: "<<port<<endl;
cout<<"Party: "<<(party==1? "CLIENT" : "SERVER")<<endl;
NetIO * io = new NetIO(party==ALICE ? nullptr : ip, port);
setup_semi_honest(io, party);


auto w = make_vector<Integer>(dim);
if ((party == BOB)) {
cout << ("Input w:") << endl;
}
/* Variable to read the clear value corresponding to the input variable w at (39,1-39,32) */
uint32_t __tmp_in_w;
for (uint32_t i0 =  (uint32_t)0; i0 < dim; i0++){
if ((party == BOB)) {
cin >> __tmp_in_w;
}
w[i0] = Integer(bitlen, __tmp_in_w, BOB);
}

Integer b;
if ((party == BOB)) {
cout << ("Input b:") << endl;
}
/* Variable to read the clear value corresponding to the input variable b at (40,1-40,27) */
uint32_t __tmp_in_b;
if ((party == BOB)) {
cin >> __tmp_in_b;
}
b = Integer(bitlen, __tmp_in_b, BOB);

auto x = make_vector<Integer>(dim);
if ((party == ALICE)) {
cout << ("Input x:") << endl;
}
/* Variable to read the clear value corresponding to the input variable x at (41,1-41,32) */
uint32_t __tmp_in_x;
for (uint32_t i0 =  (uint32_t)0; i0 < dim; i0++){
if ((party == ALICE)) {
cin >> __tmp_in_x;
}
x[i0] = Integer(bitlen, __tmp_in_x, ALICE);
}

Integer acc = Integer(bitlen,  (int32_t)0, PUBLIC);

uint32_t lower =  (uint32_t)0;

uint32_t upper = dim;
/* Temporary variable for sub-expression on source location: (47,8-47,21) */
uint32_t __tac_var1 = (lower - lower);
for (uint32_t i = __tac_var1; i < upper; i++){
/* Temporary variable for sub-expression on source location: (47,46-47,50) */
Integer __tac_var2 = w[i];
/* Temporary variable for sub-expression on source location: (47,53-47,57) */
Integer __tac_var3 = x[i];
/* Temporary variable for sub-expression on source location: (47,46-47,57) */
Integer __tac_var4 = __tac_var2.operator*(__tac_var3);
acc = acc.operator+(__tac_var4);
}
/* Temporary variable for sub-expression on source location: (48,18-48,21) */
Integer __tac_var5 = acc;
/* Temporary variable for sub-expression on source location: (48,18-48,25) */
Bit __tac_var6 = __tac_var5.operator>(b);
/* Temporary variable for sub-expression on source location: (48,29-48,30) */
Integer __tac_var7 = Integer(bitlen,  (int32_t)1, PUBLIC);
/* Temporary variable for sub-expression on source location: (48,33-48,34) */
Integer __tac_var8 = Integer(bitlen,  (int32_t)0, PUBLIC);
/* Temporary variable for sub-expression on source location: (48,17-48,34) */
Integer __tac_var9 =  If(__tac_var6, __tac_var7, __tac_var8);
cout << ("Value of __tac_var9:") << endl;
cout << (__tac_var9.reveal<int32_t>(ALICE)) << endl;


finalize_semi_honest();
delete io; 
 
return 0;
}

