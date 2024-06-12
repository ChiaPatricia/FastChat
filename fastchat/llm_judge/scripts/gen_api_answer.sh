#!/bin/bash

main_dir=fastchat/llm_judge
cd $main_dir

python gen_api_answer.py --bench-name evalq_bench
                                