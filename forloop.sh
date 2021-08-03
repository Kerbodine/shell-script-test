#!/bin/zsh

amount=10
amount2=2
dir=data

echo For loop to make ${amount} folders:

for i in `seq 1 ${amount}`; do
  echo making ${i}
  mkdir ${dir}-${i}
  echo entering ${dir}-${i}
  cd ${dir}-${i}
  echo making ${amount2} folders
  for i in `seq 1 ${amount2}`; do
    mkdir ${dir}-${i}
  done
  cd ..
done

echo Script finished
echo Created ${amount} folders with ${amount2} subfolders each.
