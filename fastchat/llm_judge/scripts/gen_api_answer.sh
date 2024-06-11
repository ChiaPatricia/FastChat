#!/bin/bash

main_dir=/cbica/home/xjia/FastChat/fastchat/llm_judge
cd $main_dir

source /cbica/software/external/python/anaconda/3/bin/activate

conda activate textlearning

python gen_api_answer.py --bench-name newCombined_bench
                                