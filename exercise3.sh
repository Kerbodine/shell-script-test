#!/bin/zsh

letters=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
echo script starting...
cd ./output
j=0
for i in ${letters}; do
  mkdir dir_${i}
  cd dir_${i}
  touch a_$(($j**2)).txt
  cd ..
  ((j++))
done
echo script finished