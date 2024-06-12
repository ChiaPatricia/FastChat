#!/bin/bash

main_dir=fastchat/llm_judge
cd $main_dir
echo "Run judgment with gpt4"

conda activate llm

python fastchat/llm_judge/gen_judgment_MentalChat.py ^
    --bench-name evalq_bench ^
    --out-name vicuna_neurips_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_lmsys_vicuna-7b-v1.5_neurips_interview_mistral_670