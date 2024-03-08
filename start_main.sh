#!/bin/bash
nohup python main.py --dataset AppsforAndroid_Electronics --gpu_id 2 --gnn ngcf >AppsforAndroid_Electronics_ngcf.log &
wait

nohup python main.py --dataset AppsforAndroid_MoviesandTV --gpu_id 2 --gnn ngcf >AppsforAndroid_MoviesandTV_ngcf.log &
wait

nohup python main.py --dataset AppsforAndroid_ToolsandHomeImprovement --gpu_id 2 --gnn ngcf >AppsforAndroid_ToolsandHomeImprovement_ngcf.log &
wait

nohup python main.py --dataset Automotive_MoviesandTV --gpu_id 2 --gnn ngcf >Automotive_MoviesandTV_ngcf.log &
wait

nohup python main.py --dataset Automotive_ToolsandHomeImprovement --gpu_id 2 --gnn ngcf >Automotive_ToolsandHomeImprovement_ngcf.log &
wait

nohup python main.py --dataset Electronics_AppsforAndroid --gpu_id 2 --gnn ngcf >Electronics_AppsforAndroid_ngcf.log &
wait

nohup python main.py --dataset MoviesandTV_AppsforAndroid --gpu_id 2 --gnn ngcf >MoviesandTV_AppsforAndroid_ngcf.log &
wait

nohup python main.py --dataset MoviesandTV_Automotive --gpu_id 2 --gnn ngcf >MoviesandTV_Automotive_ngcf.log &
wait

nohup python main.py --dataset ToolsandHomeImprovement_AppsforAndroid --gpu_id 2 --gnn ngcf >ToolsandHomeImprovement_AppsforAndroid_ngcf.log &
wait

nohup python main.py --dataset ToolsandHomeImprovement_Automotive --gpu_id 2 --gnn ngcf >ToolsandHomeImprovement_Automotive_ngcf.log &
wait