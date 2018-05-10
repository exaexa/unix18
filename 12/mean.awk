#!/bin/awk -f

BEGIN {  
	n=0;
	s=0;
}

{
	n+=1;
	s+=$1
} 

END { print s/n; } 

