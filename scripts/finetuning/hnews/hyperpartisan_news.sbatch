#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --cpus-per-task=2
#SBATCH --mem=64GB
#SBATCH --time=45:00:00
#SBATCH --gres=gpu:1
#SBATCH --job-name=hyperpartisan_news
#SBATCH --output="hyperpartisan_news.out"

module purge

singularity exec --nv \
        --overlay ${SCRATCH}/entropylm.ext3:ro \
        /scratch/work/public/singularity/cuda11.2.2-cudnn8-devel-ubuntu20.04.sif \
        /bin/bash ${SCRATCH}/nlu-proj/NLU-Project/scripts/hyperpartisan_news.sh $1

# python -m scripts.download_model --model allenai/news_roberta_base --serialization_dir $(pwd)/pretrained_models/news_roberta_base
