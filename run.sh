#! /bin/zsh

# pass in filename with command line arguments

BGreen="\033[1;32m"
NC="\033[0m"

for script in "$@"
  do
    echo "\n${BGreen}File: $script${NC}"
    chmod +x $script
    if [ "${script:(-2)}" = "sh" ]; then
      ./$script
    fi
done
