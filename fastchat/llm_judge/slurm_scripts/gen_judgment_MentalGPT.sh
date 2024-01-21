#!/bin/bash
#SBATCH --job-name=gen_judgment_MentalGPT
#SBATCH --time=20:00:00
#SBATCH --account=plgllm1-gpu-a100
#SBATCH --partition=plgrid-gpu-a100
#SBATCH --cpus-per-task=4
#SBATCH --mem=40G
#SBATCH --mail-type=ALL
#SBATCH --mail-user=tywei@seas.upenn.edu
#SBATCH --output=slurm_log/gen_judgment_MentalGPT_%j.out
#SBATCH --error=slurm_log/gen_judgment_MentalGPT_%j.err

source /net/pr2/projects/plgrid/plggllm/anaconda3/bin/activate
conda activate llm

cd /net/pr2/projects/plgrid/plggllm/FastChat/fastchat/llm_judge

export OPENAI_API_KEY=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

srun python fastchat/llm_judge/gen_judgment_MentalGPT.py --bench-name evalq_bench \
                                 --model-list samantha-v1.1-7b-phase2-1226 \
                                              vicuna-7b-gpt-online-0104 \
                                              samantha111-7b-gpt-online-0104 \
                                              samantha111-7b-gpt-online-0104 \
                                              zephyr-7b-gpt-online-0104