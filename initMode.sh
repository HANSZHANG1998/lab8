#!/bin/bash

pins='0 1 2 3' 
for pins in $pins 
do
		
		gpio mode $pins out;
		gpio write $pins 0;

done
