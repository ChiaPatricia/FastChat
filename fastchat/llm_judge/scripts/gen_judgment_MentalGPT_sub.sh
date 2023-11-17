#!/bin/bash

echo -e "\n"
echo -e "Running commands on              : `hostname`"
echo -e "Start time                       : `date +%F-%H:%M:%S`"

main_dir=/cbica/home/xjia/FastChat/fastchat/llm_judge
cd $main_dir

source /cbica/software/external/python/anaconda/3/bin/activate

conda activate textlearning


jid=$(qsub \
      -terse \
      -M "jiaxu7@upenn.edu,tywei@seas.upenn.edu" \
      -m bea \
      -l h_vmem=100G \
      -l h_rt=12:00:00 \
      -o ${main_dir}/logs/judgment/qlora_models_\$JOB_ID.stdout \
      -e ${main_dir}/logs/judgment/qlora_models_\$JOB_ID.stderr \
      ${main_dir}/scripts/gen_judgment_MentalGPT.sh \
      )

echo -e "Job ID                           : $jid\n"

#      -l h_rt=12:00:00 \
      # -q all.q@211affn017\

# FastChat/fastchat/llm_judge/scripts/gen_judgment_MentalGPT.sh
# hostname=211affn017