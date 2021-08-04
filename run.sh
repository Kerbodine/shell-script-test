#! /bin/zsh

read filename
echo "File: $filename.sh"
chmod +x $filename.sh
./$filename.sh
