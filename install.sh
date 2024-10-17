#!/bin/bash
mkdir -p NaghsLib/{Collections/{Map,Vector,LinkedList},Memory/Arena,Testing/Framework}
cd NaghsLib/Collections || (echo "Failed to enter 'NaghsLib' folder"; exit)
git clone https://www.github.com/AdamNaghs/C-Collection-Map.git Map
git clone https://www.github.com/AdamNaghs/C-Collection-Vector.git Vector
git clone https://www.github.com/AdamNaghs/C-Collection-LinkedList.git LinkedList
cd ../
git clone https://www.github.com/AdamNaghs/C-Bitset.git Bitset
git clone https://www.github.com/AdamNaghs/C-Memory-Arena.git Memory/Arena
git clone https://www.github.com/AdamNaghs/C-Testing-Framework.git Testing/Framework
