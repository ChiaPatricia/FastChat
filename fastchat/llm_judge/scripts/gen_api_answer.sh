#!/bin/bash

main_dir=/cbica/home/xjia/FastChat/fastchat/llm_judge
cd $main_dir

source /cbica/software/external/python/anaconda/3/bin/activate

conda activate textlearning

export OPENAI_API_KEY=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
python gen_api_answer.py --bench-name newCombined_bench
                                