while true
do
	counter=$RANDOM
	echo random number is $counter
	./setbits.sh $counter
	sleep 0.25s
	./initMode.sh
done
