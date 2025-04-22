source /opt/conda/etc/profile.d/conda.sh
conda activate quest
git pull
mkdir /mount/quest_data
cd kernels/3rdparty/raft && bash build.sh libraft
cd /workspace/quest/quest/ops && bash setup.sh
ln -s /mount/quest_data  /workspace/quest/evaluation/LongBench/pred
git clone https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Llama-8B "/mnt/R1-Distill-llama-8B"
pip install rouge
cd /workspace/quest && bash scripts/longbench.sh
