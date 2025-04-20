cd evaluation/LongBench

model="/mnt/R1-Distill-llama-8B"

#for task in "qasper" "narrativeqa" "hotpotqa" "multifieldqa_en" "gov_report" "triviaqa"
for task in "narrativeqa"
do
   python -u pred.py \
        --model $model --task $task

    for budget in 512 1024 2048
     do
        python -u pred.py \
            --model $model --task $task \
            --quest --token_budget $budget --chunk_size 16
    done

done

python -u eval.py --model $model