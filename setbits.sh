#!/bin/bash

var=$1
counter=0;

while [ $counter -lt 4 ]
do
	if  (($var & 1))
	then
		 gpio write 0 1; 
		
	fi
	
	if (($var>>1 & 1))
	then
		 gpio write 1 1;	 
	fi
		 
	if (($var>>2 & 1))
	then
		 gpio write 2 1; 
	fi
		 
	if (($var>>3 & 1))
	then
		 gpio write 3 1; #turn on led light 0 (bit 1)			 
	fi 
	
	(( counter++ ))
done
