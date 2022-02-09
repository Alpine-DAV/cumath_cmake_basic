
rm -rf _build
module load cmake
module load PrgEnv-gnu
module load cpe-cuda
module load cudatoolkit
env CXX=CC cmake -B _build -S . 
cd _build
make VERBOSE=1



