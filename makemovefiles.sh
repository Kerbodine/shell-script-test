#!/bin/zsh

count=10
threshold=5

echo creating files...
cd ./output
for i in `seq 1 ${count}`; do
  if [ ${i} -le ${threshold} ]
  then
    mkdir dir_${i}
    cd dir_${i}
    touch a_${i}.txt
    cd ..
  else
    mkdir dir_${i}
    touch a_${i}.txt
  fi
done
cd ..
echo finished script