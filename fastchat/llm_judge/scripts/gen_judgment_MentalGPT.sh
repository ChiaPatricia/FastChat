#!/bin/bash

main_dir=/cbica/home/xjia/FastChat/fastchat/llm_judge
cd $main_dir

source /cbica/software/external/python/anaconda/3/bin/activate

conda activate textlearning

export OPENAI_API_KEY=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
python gen_judgment_MentalGPT.py --bench-name newCombined_bench \
                                 --model-list vicuna-7b-v1.5 \
                                              vicuna-7b-gpt-1018 \
                                              zephyr-7b-alpha \
                                              zephyr-7b-gpt-1025 \
                                              Samantha-1.11-7b \
                                              samantha111-7b-gpt-1022 \
                                              Samantha-1.2-mistral-7b \
                                              samantha12-7b-gpt-1022 \
                                              ChatPsychiatrist


                                              