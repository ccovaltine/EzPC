# e.g.

# ./network-benchmark.sh local 1 secfloat logstic   &    ./network-benchmark.sh local 2 secfloat logstic

# ./network-benchmark.sh local 1 beacon lenet       &    ./network-benchmark.sh local 2 beacon lenet

# ./network-benchmark.sh remote 1 secfloat ff       &    ./network-benchmark.sh remote 2 secfloat ff

mode=$1
role=$2
library_name=$3
network_name=$4

if [ $role == 1 ]
then
    echo "alice"
   ./build/bin/$4*_$3* r=1 < ../networks/inputs/$4*_wei*.inp
elif [ $1 == "local" ]
then
    echo "bob: local"
    ./build/bin/$4*_$3* r=2 < ../networks/inputs/$4*_inp*.inp
else
    echo "bob: remote"
    ./build/bin/$4*_$3* r=2 add=172.21.153.100 < ../networks/inputs/$4*_inp*.inp
fi