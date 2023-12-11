#!/bin/bash

prefix="nvm_malloc"

for bench in 1 6
do
for thread in 1 7 14 21 28 35 42 49 56
do
log="./log/${prefix}_b${bench}_t${thread}.txt"
echo ${log}
rm -f ${log}

sudo ./build/nbtree -b ${bench} -n ${thread} >> ${log}
sleep 1
done
done