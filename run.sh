#!/bin/bash

source env/bin/activate

for i in 0 1 2 3 4 5 6 7 8 9; do
    rm -rf logs
    python main.py --seed $i --stopping validation --validation_percent 0.2 --criterion_freq 1 --patience 20 --knn_param 25 --interpol_queries 1.0
    tar zcvf log$i.tgz logs
done

