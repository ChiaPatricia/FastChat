#!/bin/bash

main_dir=/cbica/home/xjia/FastChat/fastchat/llm_judge
cd $main_dir
echo "Run judgment for samantha-v1.1-7b-phase2-1226, vicuna-7b-gpt-online-0104, samantha111-7b-gpt-online-0104, samantha111-7b-gpt-online-0104, zephyr-7b-gpt-online-0104"

source /net/pr2/projects/plgrid/plggllm/anaconda3/bin/activate

conda activate llm

python fastchat/llm_judge/gen_judgment_MentalGPT_1.py --bench-name evalq_bench \
                                 --model-list vicuna-7b-v1.5 \
                                              vicuna-7b-gpt-1018 
                                              vicuna-7b-v1.5-phase2-1223 \
                                              vicuna-7b-gpt-online-0104 \
                                              Samantha-1.11-7b \
                                              samantha111-7b-gpt-1022 \
                                              samantha-v1.1-7b-phase2-1226 \
                                              samantha111-7b-gpt-online-0104 \
                                              Samantha-1.2-mistral-7b \
                                              samantha12-7b-gpt-1022 \
                                              samantha-v1.2-mistral-7b-phase2-1223 \
                                              samantha12-7b-gpt-online-0104 \
                                              zephyr-7b-alpha \
                                              zephyr-7b-gpt-1025 \
                                              zephyr-7b-alpha-phase2-1223 \
                                              zephyr-7b-gpt-online-0104 \
                                              Mistral-7B-v0.1 \
                                              Mistral-7B-v0.1-phase2-1223 \
                                              Mistral-7B-Instruct-v0.2 \
                                              Mistral-7B-Instruct-v0.2-gpt-0104 \
                                              Mistral-7B-Instruct-v0.2-phase2-1223 \
                                              Mixtral-8x7B-v0.1 \
                                              Mixtral-8x7B-v0.1-gpt-0104 \
                                              Mixtral-8x7B-v0.1-phase2-1223 \
                                              Mixtral-8x7B-Instruct-v0.1 \
                                              Mixtral-8x7B-Instruct-v0.1-phase2-1223 \
                                              ChatPsychiatrist

python .\fastchat\llm_judge\gen_judgment_MentalGPT_3.py --bench-name evalq_bench `
                                --model-list Mistral-7B-v0.1 `
                                             Mistral-7B-v0.1-phase2-1223 `
                                             Mistral-7B-Instruct-v0.2 `
                                             Mistral-7B-Instruct-v0.2-gpt-0104 `
                                             Mistral-7B-Instruct-v0.2-phase2-1223 `
                                             Mixtral-8x7B-v0.1 `
                                             Mixtral-8x7B-v0.1-gpt-0104 `
                                             Mixtral-8x7B-v0.1-phase2-1223 `
                                             Mixtral-8x7B-Instruct-v0.1 `
                                             Mixtral-8x7B-Instruct-v0.1-phase2-1223 `
                                             ChatPsychiatrist
                                             
python .\fastchat\llm_judge\gen_judgment_MentalGPT_4.py --bench-name evalq_bench `
                                --model-list Mixtral-8x7B-Instruct-v0.1-interview-0201 `
                                             Mixtral-8x7B-v0.1-interview-0201 `
                                             Mistral-7B-v0.1-gpt-0104 `
                                             Mixtral-8x7B-Instruct-v0.1-gpt-0104 `
                                             samantha12-7b-interview-0201 `
                                             samantha111-7b-interview-0201 `
                                             vicuna-7b-v1.5-interview-0201 `
                                             zephyr-7b-interview-0201 
                                        