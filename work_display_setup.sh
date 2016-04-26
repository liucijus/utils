#!/bin/bash

HEAD_1="DP2-2 1920x1200"
HEAD_2="VGA1 1920x1200"
HEAD_3="eDP1 1600x900"

HEADS=( $HEAD_1 $HEAD_2 $HEAD_3 )

XRANDR_CMD="xrandr"

MAX_IDX=$(( ${#HEADS[@]} - 2 )) 

for i in `seq 0 2 $MAX_IDS` 
do
  NAME_IDX=$(( i * 2 ))
  MODE_IDX=$(( $NAME_IDX + 1 ))
  XRANDR_CMD+=" --output ${HEADS[$NAME_IDX]} --mode ${HEADS[$MODE_IDX]}" 
  if (( $i > 0 ))
  then
    PREV_NAME_IDX=$(( $NAME_IDX - 2 ))
    XRANDR_CMD+=" --right-of ${HEADS[$PREV_NAME_IDX]}"
  fi  
done

echo $XRANDR_CMD
`$XRANDR_CMD`

