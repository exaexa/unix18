#!/bin/bash
a=$1
b=$2
while true ; do 
	if [ $a -eq 0 ] ; then echo $b; exit ; fi
	if [ $b -eq 0 ] ; then echo $a; exit ; fi
	if [ $a -lt $b ]
	then
		b=$(($b-$a))
	else
		a=$(($a-$b))
	fi;
done
