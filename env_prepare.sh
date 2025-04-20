source /opt/conda/etc/profile.d/conda.sh
conda activate quest
cd kernels/3rdparty/raft && bash build.sh libraft
cd /workspace/quest/quest/ops && bash setup.sh
ln -s /mount/quest_data  /workspace/quest/evaluation/LongBench/pred

cd /workspace/quest && bash scripts/longbench.sh
