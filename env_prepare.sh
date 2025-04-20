cd kernels/3rdparty/raft && bash build.sh libraft
cd /workspace/quest/quest/ops && bash setup.sh

ln -s /mount/quest_data    /workspace/quest/evaluation/LongBench/pred
