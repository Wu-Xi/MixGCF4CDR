import os
import pdb
from collections import defaultdict


def read_dataset(dataset_name,type):
    with open(f"data/{dataset_name}/{type}.txt","r")as file:
        train_data = file.readlines()
    
    users_list,items_list = list(),list()
    inters_dict = defaultdict(list)
    for l in train_data:
        tmps = l.strip()
        inters = [int(i) for i in tmps.split("\t")]
        u_id, pos_ids = inters[0], inters[1]
        users_list.append(int(u_id))
        items_list.append(int(pos_ids))
        inters_dict[u_id].append(pos_ids)
    
    users_total,items_total= len(set(users_list)),len(set(items_list))
    with open(f"data/{dataset_name}/{type}_cf.txt","w")as file:
        for i_user in range(len(users_list)):
            temp_items = inters_dict[i_user]
            for i_item in range(len(temp_items)):
                min_item = min(temp_items)
                file.write(str(i_user)+" "+str(min_item)+"\n")
                temp_items.remove(min_item)
        


dataset_names = os.listdir("./data")
for i_dataset in dataset_names:
    print(i_dataset)
    # read_dataset(i_dataset,"train")
    # read_dataset(i_dataset,"test")







