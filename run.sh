#! /bin/zsh

# Pass in filename with command line arguments
# E.g. ./run.sh file-1.sh file-2.sh ... file-n.sh

# ANSI color codes
BGreen="\033[1;32m"
NC="\033[0m"
Yellow='\033[0;33m'

for script in "$@"
  do
    echo "\n${BGreen}File: $script${Yellow}"
    chmod +x $script
    if [ "${script:(-2)}" = "sh" ]; then
      ./$script
    fi
done
