#!/bin/zsh

echo starting script...

cd ./output

for i in `seq 1 10`; do
  mv a_${i}.txt dir_${i}
done

cd ..

echo script finished