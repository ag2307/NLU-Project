#!/bin/bash

source /ext3/miniconda3/etc/profile.d/conda.sh

conda activate domains

cd ${SCRATCH}/nlu-proj/NLU-Project/vendor/dont-stop-pretraining

echo $(pwd)
echo "Training on "$1" samples from citation_intent"

# need to manually download models in pretrained_models
# not tracked on github

python -m scripts.train \
--config training_config/classifier.jsonnet \
--serialization_dir model_logs/citation_intent-dapt \
--hyperparameters ROBERTA_CLASSIFIER_SMALL \
--dataset citation_intent \
--train_throttle $1 \
--model $(pwd)/pretrained_models/cs_roberta_base \
--device 0 \
--perf +f1 \
--evaluate_on_test
