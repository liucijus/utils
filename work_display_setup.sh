#!/bin/bash

HEAD_1=("DP2-2" "1920x1200")
HEAD_2=("VGA1" "1920x1200")
HEAD_3=("eDP1" "1600x900")

xrandr \
  --output ${HEAD_1[0]} --mode ${HEAD_1[1]} \
  --output ${HEAD_2[0]} --mode ${HEAD_2[1]} --right-of ${HEAD_1[0]} \
  --output ${HEAD_3[0]} --mode ${HEAD_3[1]} --right-of ${HEAD_2[0]}
 
