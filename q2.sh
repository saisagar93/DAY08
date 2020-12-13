#! /bin/bash

declare -A Month

Month=( [Jan]="" [Feb]="" [Mar]="" [Apr]="" [May]="" [Jun]="" [Jul]="" [Aug]="" [Sep]="" [Oct]="" [Nov]="" [Dec]="" )
noOfPer=50

for (( person=1; person<=$noOfPer; person++ ))
do
	month=$(( RANDOM%12+1 ))
	case $month in
	1)
	    Month["Jan"]="${Month[Jan]} P$person"
		;;
	2)
     	    Month["Feb"]="${Month[Feb]} P$person"
		;;
	3)
            Month["Mar"]="${Month[Mar]} P$person"
		;;
	4)
            Month["Apr"]="${Month[Apr]} P$person"
		;;
	5)
            Month["May"]="${Month[May]} P$person"
		;;
	6)
            Month["Jun"]="${Month[Jun]} P$person"
		;;
	7)
            Month["Jul"]="${Month[Jul]} P$person"
		;;
	8)
            Month["Aug"]="${Month[Aug]} P$person"
		;;
	9)
            Month["Sep"]="${Month[Sep]} P$person"
		;;
	10)
            Month["Oct"]="${Month[Oct]} P$person"
		;;
	11)
            Month["Nov"]="${Month[Nov]} P$person"
		;;
	12)
            Month["Dec"]="${Month[Dec]} P$person"
		;;
	esac
done

for key in "${!Month[@]}"
do
		echo $key : "${Month[$key]}"
done
