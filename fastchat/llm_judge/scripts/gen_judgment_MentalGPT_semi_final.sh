#!/bin/bash

main_dir=/cbica/home/xjia/FastChat/fastchat/llm_judge
cd $main_dir
echo "Run judgment for samantha-v1.1-7b-phase2-1226, vicuna-7b-gpt-online-0104, samantha111-7b-gpt-online-0104, samantha111-7b-gpt-online-0104, zephyr-7b-gpt-online-0104"

source /net/pr2/projects/plgrid/plggllm/anaconda3/bin/activate

conda activate llm

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name vicuna_neurips_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_lmsys_vicuna-7b-v1.5_neurips_interview_mistral_670

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name vicuna_neurips_synthetic_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_lmsys_vicuna-7b-v1.5_neurips_synthetic_interview_1430

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name zephyr_neurips_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_HuggingFaceH4_zephyr-7b-alpha_neurips_interview_mistral_670

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name zephyr_neurips_synthetic_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_HuggingFaceH4_zephyr-7b-alpha_neurips_synthetic_interview_1430

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name llama2_neurips_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_meta-llama_Llama-2-7b-hf_neurips_interview_mistral_670

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name llama2_neurips_synthetic_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_meta-llama_Llama-2-7b-hf_neurips_synthetic_interview_1430

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mistral_instruct_neurips_interview ^
    --judge-model gemini-pro ^
    --model-list finetune_mistralai_Mistral-7B-Instruct-v0.2_neurips_interview_mistral_670

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mistral_instruct_neurips_synthetic_interview ^
    --judge-model gemini-pro ^
    --model-list finetune_mistralai_Mistral-7B-Instruct-v0.2_neurips_synthetic_interview_1430

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mistral_neurips_interview ^
    --judge-model gemini-pro ^
    --model-list finetune_mistralai_Mistral-7B-v0.1_neurips_interview_mistral_670

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mistral_neurips_synthetic_interview ^
    --judge-model gemini-pro ^
    --model-list finetune_mistralai_Mistral-7B-v0.1_neurips_synthetic_interview_1430

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name vicuna ^
    --judge-model gpt-4-1106-preview ^
    --model-list vicuna-7b-v1.5 

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name vicuna_neurips_interview ^
    --judge-model gemini-pro ^
    --model-list finetune_lmsys_vicuna-7b-v1.5_neurips_interview_mistral_670

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name vicuna_neurips_synthetic_interview ^
    --judge-model gemini-pro ^
    --model-list finetune_lmsys_vicuna-7b-v1.5_neurips_synthetic_interview_1430 

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name vicuna_gpt_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_lmsys_vicuna-7b-v1.5_gpt_interview_mistral_instruct_1260

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name vicuna_gpt ^
    --judge-model gpt-4-1106-preview ^
    --model-list vicuna-7b-gpt-1018

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name vicuna_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_lmsys_vicuna-7b-v1.5_paraphrase2_interview_mistral_instruct_500

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name zephyr ^
    --judge-model gpt-4-1106-preview ^
    --model-list zephyr-7b-alpha

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name zephyr_neurips_interview ^
    --judge-model gemini-pro ^
    --model-list finetune_HuggingFaceH4_zephyr-7b-alpha_neurips_interview_mistral_670

python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name zephyr_neurips_synthetic_interview ^
    --judge-model gemini-pro ^
    --model-list finetune_HuggingFaceH4_zephyr-7b-alpha_neurips_synthetic_interview_1430

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name zephyr_gpt ^
    --judge-model gpt-4-1106-preview ^
    --model-list zephyr-7b-gpt-1025

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name zephyr_gpt_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_HuggingFaceH4_zephyr-7b-alpha_gpt_interview_mistral_instruct_1260

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name zephyr_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_HuggingFaceH4_zephyr-7b-alpha_paraphrase2_interview_mistral_instruct_500

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name llama2 ^
    --judge-model gpt-4-1106-preview ^
    --model-list Llama-2-7b-hf

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name llama2_gpt ^
    --judge-model gpt-4-1106-preview ^
    --model-list llama2-7b-gpt-0113

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name llama2_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_meta-llama_Llama-2-7b-hf_paraphrase2_interview_mistral_instruct_500

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name samantha-v1.2 ^
    --judge-model gpt-4-1106-preview ^
    --model-list samantha-1.2-mistral-7b

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name samantha-v1.11 ^
    --judge-model gpt-4-1106-preview ^
    --model-list Samantha-1.11-7b
#Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mistral-instruct ^
    --judge-model gpt-4-1106-preview ^
    --model-list Mistral-7B-Instruct-v0.2

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mistral-instruct_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_mistralai_Mistral-7B-Instruct-v0.2_paraphrase2_interview_mistral_instruct_500

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mistral-instruct_gpt ^
    --judge-model gpt-4-1106-preview ^
    --model-list Mistral-7B-Instruct-v0.2-gpt-0104

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mistral ^
    --judge-model gpt-4-1106-preview ^
    --model-list Mistral-7B-v0.1

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mistral_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_mistralai_Mistral-7B-v0.1_paraphrase2_interview_mistral_instruct_500

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mistral_gpt ^
    --judge-model gpt-4-1106-preview ^
    --model-list Mistral-7B-v0.1-gpt-0104
#Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mistral_gpt_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_mistralai_Mistral-7B-v0.1_gpt_interview_mistral_instruct_1260
    
# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mixtral-instruct_gpt ^
    --judge-model gpt-4-1106-preview ^
    --model-list Mixtral-8x7B-Instruct-v0.1-gpt-0104

#Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mixtral-instruct ^
    --judge-model gpt-4-1106-preview ^
    --model-list Mixtral-8x7B-Instruct-v0.1

#Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mixtral-instruct_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_mistralai_Mixtral-8x7B-Instruct-v0.1_paraphrase2_interview_mistral_instruct_500

#Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mixtral-instruct_gpt_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_mistralai_Mixtral-8x7B-Instruct-v0.1_gpt_interview_mistral_instruct_1260

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mixtral_gpt ^
    --judge-model gpt-4-1106-preview ^
    --model-list Mixtral-8x7B-v0.1-gpt-0104

#Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mixtral ^
    --judge-model gpt-4-1106-preview ^
    --model-list Mixtral-8x7B-v0.1

#Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mixtral_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_mistralai_Mixtral-8x7B-v0.1_paraphrase2_interview_mistral_instruct_500

#Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mixtral_gpt_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_mistralai_Mixtral-8x7B-v0.1_gpt_interview_mistral_instruct_1260

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name llama_gpt_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_meta-llama_Llama-2-7b-hf_gpt_interview_mistral_instruct_1260

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name mistral-instruct_gpt_interview ^
    --judge-model gpt-4-1106-preview ^
    --model-list finetune_mistralai_Mistral-7B-Instruct-v0.2_gpt_interview_mistral_instruct_1260

# Done2
python fastchat/llm_judge/gen_judgment_MentalGPT_semi_final.py ^
    --bench-name evalq_bench ^
    --out-name ChatPsychiatrist^
    --judge-model gpt-4-1106-preview ^
    --model-list ChatPsychiatrist

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
                                        