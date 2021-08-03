#!/bin/zsh

: > output.txt

for i in `seq 1 100`; do
  echo ${i} >> output.txt
done

cat <<EOT >> output.txt
------
line 1
line 2
line 3
------
EOT