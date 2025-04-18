
conda activate quest
# Quest
pip install -e .
# Flash-Attention
pip install ninja packaging
pip install flash-attn==2.6.3 --no-build-isolation

# Install CMake (with version >= 3.26.4)
conda install cmake

# build libraft
cd kernels/3rdparty/raft
./build.sh libraft

cd kernels
mkdir build && cd build
cmake ..
make -j

# This will automatically build and link the operators
cd quest/ops
bash setup.sh