#! /bin/bash

input=""
output=""

split() {
  IFS=$'\n' read -d "" -ra arr <<< "${1//$2/$'\n'}"
  output="${arr[@]}"
}

rgb_to_hex() {
  printf '#%02x%02x%02x\n' "$1" "$2" "$3"
}

while :; do read input; split "$input" " "; rgb_to_hex $output; done
