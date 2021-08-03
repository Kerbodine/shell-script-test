#!/bin/zsh

echo creating files

cd ./output

for i in `seq 1 10`; do
  touch a_${i}.txt
  mkdir dir_${i}
done
echo finished

cd ..