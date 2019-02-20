#!/usr/bin/env bash

export PRETRAINED_MODEL_PATH=../model/model.ckpt-1400000
export FINETUNE_OUTPUT_DIR=../output/

python3 ../src/run_classifier.py \
  --task_name=livedoor \
  --do_train=true \
  --do_eval=true \
  --data_dir=../data/livedoor \
  --model_file=../model/wiki-ja.model \
  --vocab_file=../model/wiki-ja.vocab \
  --init_checkpoint=$PRETRAINED_MODEL_PATH \
  --max_seq_length=512 \
  --train_batch_size=4 \
  --learning_rate=2e-5 \
  --num_train_epochs=10 \
  --output_dir=$FINETUNE_OUTPUT_DIR