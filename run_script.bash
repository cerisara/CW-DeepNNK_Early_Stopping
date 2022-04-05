# Use CW-DeepNNK early stopping in the training of a ConvNet
# add '--mode test' after training to evaluate the final model

date >> logg
python main.py --seed 557931 --stopping unsuprisk --validation_percent 0 --criterion_freq 1 --patience 20 --knn_param 25 --interpol_queries 1.0
date >> logg
python main.py --seed 557931 --stopping validation --validation_percent 0.2 --criterion_freq 1 --patience 20 --knn_param 25 --interpol_queries 1.0
date >> logg
exit
python main.py --mode test --stopping unsuprisk --validation_percent 0 --criterion_freq 1 --patience 20 --knn_param 25 --interpol_queries 1.0

python main.py --mode test --stopping unsuprisk --validation_percent 0 --criterion_freq 1 --patience 20 --knn_param 25 --interpol_queries 1.0
exit

python main.py --stopping unsuprisk --validation_percent 0.2 --criterion_freq 1 --patience 20 --knn_param 25 --interpol_queries 1.0
exit

python main.py --stopping validation --validation_percent 0.2 --criterion_freq 1 --patience 20 --knn_param 25 --interpol_queries 1.0
exit

python main.py --stopping cwdeepnnk --validation_percent 0 --criterion_freq 1 --patience 20 --knn_param 25 --interpol_queries 1.0
python main.py --stopping cwdeepnnk --validation_percent 0 --criterion_freq 10 --patience 2 --knn_param 25 --interpol_queries 1.0
python main.py --stopping cwdeepnnk --validation_percent 0 --criterion_freq 10 --patience 2 --knn_param 15 --interpol_queries 1.0
python main.py --stopping cwdeepnnk --validation_percent 0 --criterion_freq 10 --patience 2 --knn_param 15 --interpol_queries 0.5
