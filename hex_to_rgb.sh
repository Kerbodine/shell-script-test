#! /bin/bash

input=""

hex_to_rgb() {
  : "${1/\#}"
  ((r=16#${_:0:2},g=16#${_:2:2},b=16#${_:4:2}))
  printf '%s\n' "$r $g $b"
}

while :; do read input; hex_to_rgb "$input"; done
