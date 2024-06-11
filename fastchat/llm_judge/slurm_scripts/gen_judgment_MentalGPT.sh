#!/bin/bash
#SBATCH --job-name=gen_judgment_MentalGPT
#SBATCH --time=20:00:00
#SBATCH --account=plgllm1-gpu-a100
#SBATCH --partition=plgrid-gpu-a100
#SBATCH --cpus-per-task=4
#SBATCH --mem=40G
#SBATCH --gres=gpu
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jiaxu@alumni.upenn.edu
#SBATCH --output=slurm_log/gen_judgment_MentalGPT_%j.out
#SBATCH --error=slurm_log/gen_judgment_MentalGPT_%j.err

source /net/pr2/projects/plgrid/plggllm/anaconda3/bin/activate
conda activate llm

cd /net/pr2/projects/plgrid/plggllm/FastChat

srun python fastchat/llm_judge/gen_judgment_MentalGPT_1.py --bench-name evalq_bench \
                                 --model-list Mistral-7B-Instruct-v0.2-gpt-interview-bs16-0218
                                            