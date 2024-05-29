if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/original" ]; then
    mkdir ./logs/original
fi

model_name=TiDE
seq_len=96



python -u run_longExp.py \
  --is_training 1 \
  --use_former \
  --task_name long_term_forecast \
  --root_path ./dataset/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_96_96 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 96 \
  --e_layers 2 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --des 'Exp' \
  --d_model 128 \
  --d_ff 128 \
  --batch_size 32 \
  --itr 1 --train_epochs 6 >logs/original/$model_name'_exchange_rate_'96.log

python -u run_longExp.py \
  --is_training 1 \
  --use_former \
  --root_path ./dataset/ \
  --task_name long_term_forecast \
  --data_path exchange_rate.csv \
  --model_id Exchange_96_192 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 192 \
  --e_layers 2 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --des 'Exp' \
  --d_model 128 \
  --d_ff 128 \
  --batch_size 32 \
  --itr 1 --train_epochs 6 >logs/original/$model_name'_exchange_rate_'192.log

python -u run_longExp.py \
  --is_training 1 \
  --use_former \
  --root_path ./dataset/ \
  --task_name long_term_forecast \
  --data_path exchange_rate.csv \
  --model_id Exchange_96_336 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 336 \
  --e_layers 2 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --des 'Exp' \
  --itr 1 \
  --d_model 128 \
  --d_ff 128 \
  --batch_size 32 \
  --train_epochs 6 >logs/original/$model_name'_exchange_rate_'336.log

python -u run_longExp.py \
  --is_training 1 \
  --use_former \
  --task_name long_term_forecast \
  --root_path ./dataset/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_96_720 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 720 \
  --e_layers 2 \
  --enc_in 8 \
  --dec_in 8 \
  --c_out 8 \
  --des 'Exp' \
  --d_model 128 \
  --d_ff 128 \
  --batch_size 32 \
  --itr 1  --train_epochs 6 >logs/original/$model_name'_exchange_rate_'720.log