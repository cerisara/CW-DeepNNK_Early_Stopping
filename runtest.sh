#!/bin/bash

source env/bin/activate

rm finres
touch finres
for i in 0 1 2 3 4 5 6 7 8 9; do
    j=$(( i+1 ))
    cd tmp
    rm -rf logs
    tar zxvf ../log$j.tgz
    python main.py --mode test --seed $i --stopping unsuprisk --validation_percent 0 --criterion_freq 1 --patience 20 --knn_param 25 --interpol_queries 1.0
    find logs -name "results.json" -exec cat {} \; >> ../finres
    cd ..
done


