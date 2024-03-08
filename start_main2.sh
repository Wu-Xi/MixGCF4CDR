#!/bin/bash
nohup python main.py --dataset AppsforAndroid_Electronics --gpu_id 1 --gnn lightgcn >AppsforAndroid_Electronics_lightgcn.log &
wait

nohup python main.py --dataset AppsforAndroid_MoviesandTV --gpu_id 1 --gnn lightgcn >AppsforAndroid_MoviesandTV_lightgcn.log &
wait

nohup python main.py --dataset AppsforAndroid_ToolsandHomeImprovement --gpu_id 1 --gnn lightgcn >AppsforAndroid_ToolsandHomeImprovement_lightgcn.log &
wait

nohup python main.py --dataset Automotive_MoviesandTV --gpu_id 1 --gnn lightgcn >Automotive_MoviesandTV_lightgcn.log &
wait

nohup python main.py --dataset Automotive_ToolsandHomeImprovement --gpu_id 1 --gnn lightgcn >Automotive_ToolsandHomeImprovement_lightgcn.log &
wait

nohup python main.py --dataset Electronics_AppsforAndroid --gpu_id 1 --gnn lightgcn >Electronics_AppsforAndroid_lightgcn.log &
wait

nohup python main.py --dataset MoviesandTV_AppsforAndroid --gpu_id 1 --gnn lightgcn >MoviesandTV_AppsforAndroid_lightgcn.log &
wait

nohup python main.py --dataset MoviesandTV_Automotive --gpu_id 1 --gnn lightgcn >MoviesandTV_Automotive_lightgcn.log &
wait

nohup python main.py --dataset ToolsandHomeImprovement_AppsforAndroid --gpu_id 1 --gnn lightgcn >ToolsandHomeImprovement_AppsforAndroid_lightgcn.log &
wait

nohup python main.py --dataset ToolsandHomeImprovement_Automotive --gpu_id 1 --gnn lightgcn >ToolsandHomeImprovement_Automotive_lightgcn.log &
wait