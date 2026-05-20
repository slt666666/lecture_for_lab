#!/bin/bash
#SBATCH -p epyc
#SBATCH -t 0-00:10:00
#SBATCH --mem-per-cpu 4g
#SBATCH -J an_example

# ここより後に実行したいプログラムを書く
# 今回は10秒毎に1つのファイルを作成するスクリプト
mkdir job_test
cd job_test
for i in {1..100};do
    touch file_${i}.txt
    sleep 10
done