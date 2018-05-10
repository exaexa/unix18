#!/bin/awk -f

BEGIN { 
	RS="[^a-zA-Z]";
	max=0;
}
(length($0)>0){
	a[length($0)]+=1;
	if(a[length($0)]>max) max=a[length($0)];
}

END {
	for(i in a) {
		printf i " ";
		for(j=0; j < 60*a[i]/max; j++ ) 
			printf "#";
		
		print "";
	}
}
