#!/bin/bash
SNOWCODE=(2603 26C7 2744 2745 2746 2728 26C4 1F377 1F412 1F378 1F435 1F386 1F384 1F389 1F381 1F385)
let "len=${#SNOWCODE[*]} - 1"
while true;
# for i in {1..2016};
do
	i=`shuf -i 0-$len -n 1`;
	# colorf=`shuf -i 10-50 -n 1`;
	# colorb=`shuf -i 10-50 -n 1`;
	# echo $colorf $colorb
	echo -en "\E[4$(( $RANDOM * 6 / 32767 + 1 ))m \U${SNOWCODE[$i]} ";
	latency=0.0`shuf -i 3-9 -n 1`;
	sleep $latency;
done;
