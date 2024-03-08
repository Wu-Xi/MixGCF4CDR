# 基于CDR的 LightGCN model 和 NGCF model 源代码
## 改动地方:把原来的 all-ranking 排序测试法改为 CDR 的 TOP-100 排序测试法（99 negatives + 1 positive） 如果没有CDR上的负采样需求，请使用 --ns rns 的随机采样法


#### LightGCN

##### Random sample(rns)

```
python main.py --dataset ali --gnn lightgcn --dim 64 --lr 0.001 --batch_size 2048 --gpu_id 0 --context_hops 3 --pool mean --ns rns --K 1 --n_negs 1

python main.py --dataset yelp2018 --gnn lightgcn --dim 64 --lr 0.001 --batch_size 2048 --gpu_id 0 --context_hops 3 --pool mean --ns rns --K 1 --n_negs 1

python main.py --dataset amazon --gnn lightgcn --dim 64 --lr 0.001 --batch_size 2048 --gpu_id 0 --context_hops 3 --pool mean --ns rns --K 1 --n_negs 1
```

#####  MixGCF

```
python main.py --dataset ali --dim 64 --lr 0.001 --batch_size 2048 --gpu_id 0 --context_hops 3 --pool mean --ns mixgcf --K 1 --n_negs 32

python main.py --dataset yelp2018 --dim 64 --lr 0.001 --batch_size 2048 --gpu_id 0 --context_hops 3 --pool mean --ns mixgcf --K 1 --n_negs 64

python main.py --dataset amazon --dim 64 --lr 0.001 --batch_size 2048 --gpu_id 0 --context_hops 3 --pool mean --ns mixgcf --K 1 --n_negs 16
```

#### NGCF

##### Random sample(rns)

```
python main.py --dataset ali --gnn ngcf --dim 64 --lr 0.0001 --batch_size 1024 --gpu_id 0 --context_hops 3 --pool concat --ns rns --K 1 --n_negs 1

python main.py --dataset yelp2018 --gnn ngcf --dim 64 --lr 0.0001 --batch_size 1024 --gpu_id 0 --context_hops 3 --pool concat --ns rns --K 1 --n_negs 1

python main.py --dataset amazon --gnn ngcf --dim 64 --lr 0.0001 --batch_size 1024 --gpu_id 0 --context_hops 3 --pool concat --ns rns --K 1 --n_negs 1
```

##### MixGCF

```
python main.py --dataset ali --gnn ngcf --dim 64 --lr 0.0001 --batch_size 1024 --gpu_id 0 --context_hops 3 --pool concat --ns mixgcf --K 1 --n_negs 64

python main.py --dataset yelp2018 --gnn ngcf --dim 64 --lr 0.0001 --batch_size 1024 --gpu_id 0 --context_hops 3 --pool concat --ns mixgcf --K 1 --n_negs 64

python main.py --dataset amazon --gnn ngcf --dim 64 --lr 0.0001 --batch_size 1024 --gpu_id 0 --context_hops 3 --pool concat --ns mixgcf --K 1 --n_negs 64
```