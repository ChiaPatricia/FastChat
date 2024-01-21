#!/bin/bash

main_dir=/cbica/home/xjia/FastChat/fastchat/llm_judge
cd $main_dir
echo "Run judgment for samantha-v1.1-7b-phase2-1226, vicuna-7b-gpt-online-0104, samantha111-7b-gpt-online-0104, samantha111-7b-gpt-online-0104, zephyr-7b-gpt-online-0104"

source /net/pr2/projects/plgrid/plggllm/anaconda3/bin/activate

conda activate llm

export OPENAI_API_KEY=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
python gen_judgment_MentalGPT.py --bench-name evalq_bench \
                                 --model-list samantha-v1.1-7b-phase2-1226 \
                                              vicuna-7b-gpt-online-0104 \
                                              samantha111-7b-gpt-online-0104 \
                                              samantha111-7b-gpt-online-0104 \
                                              zephyr-7b-gpt-online-0104

                                              