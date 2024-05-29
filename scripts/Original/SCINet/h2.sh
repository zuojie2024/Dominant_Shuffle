if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/original" ]; then
    mkdir ./logs/original
fi

model_name=SCINet


python -u run_longExp.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path ETTh2.csv \
  --model_id ETTh2_96_96 \
  --model $model_name \
  --data ETTh2 \
  --features M \
  --seq_len 192 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --hidden_size 4\
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --itr 1 \
  --dropout 0.5 \
  --train_epochs 8  >logs/original/$model_name'_ETTh2_'96.log



python -u run_longExp.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path ETTh2.csv \
  --model_id ETTh2_96_192 \
  --model $model_name \
  --data ETTh2 \
  --features M \
  --seq_len 336\
  --label_len 48 \
  --pred_len 192 \
  --e_layers 2 \
  --d_layers 1 \
  --hidden_size 4\
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --itr 1 \
  --dropout 0.5 \
  --train_epochs 8 >logs/original/$model_name'_ETTh2_'192.log

python -u run_longExp.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path ETTh2.csv \
  --model_id ETTh2_96_336 \
  --model $model_name \
  --data ETTh2 \
  --features M \
  --seq_len 336 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --hidden_size 4\
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --itr 1 \
  --dropout 0.5 \
  --train_epochs 8 >logs/original/$model_name'_ETTh2_'336.log




python -u run_longExp.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path ETTh2.csv \
  --model_id ETTh2_96_720 \
  --model $model_name \
  --data ETTh2 \
  --features M \
  --seq_len 736 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --hidden_size 4\
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --itr 1 \
  --dropout 0.5 \
  --train_epochs 8 >logs/original/$model_name'_ETTh2_'720.log