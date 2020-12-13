#! /bin/bash

declare -A arr

# set the dictionary key and value to 0
arr=( [count1]=0 [count2]=0 [count3]=0 [count4]=0 [count5]=0 [count6]=0 )
reachTime=10

# Start rolling the dice

while [[ ${arr[count$die]} -lt $reachTime ]]
do
	die=$(( RANDOM%6+1))
	if [ $die -eq 1 ]
	then
	arr["count1"]=$(( ${arr[count1]}+1 ))
	elif [ $die -eq 2 ]
	then
	arr["count2"]=$(( ${arr[count2]}+1 ))
	elif [ $die -eq 3 ]
      	then
       	arr["count3"]=$(( ${arr[count3]}+1 ))
	elif [ $die -eq 4 ]
     	then
       	arr["count4"]=$(( ${arr[count4]}+1 ))
	elif [ $die -eq 5 ]
      	then
       	arr["count5"]=$(( ${arr[count5]}+1 ))
	else
       	arr["count6"]=$(( ${arr[count6]}+1 ))
	fi

		# To get Maximum number of time dice number is

	if [[ ${arr[count$die]} -eq reachTime ]]
	then
		max=num$die
	fi
done

# to display the elements of dictionary
for key in "${!arr[@]}"
do
	echo "$key: ${arr[$key]}"
done


# to get minimum value of count
min=10
for key in "${!arr[@]}"
do
	if [[ ${arr[$key]} -lt $min ]]
	then
	 min="${arr[$key]}"
	 minKey=$key
	fi
done

# display the outputs

echo "minimum face is $minKey with count  $min"
echo "maximum face is $max with count  $reachTime"
