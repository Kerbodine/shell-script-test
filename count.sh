#! /bin/zsh

totalnum=10000
numperfile=1000

cd ./output
for i in `seq 0 $(((totalnum / numperfile) - 1))`
  do
    min=$((i * numperfile + 1))
    max=$(((i + 1) * numperfile))
    touch "${min}-${max}.txt"
    for j in `seq $min $max`
      do
        echo "$j" >> "${min}-${max}.txt"
    done
done