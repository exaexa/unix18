#!/bin/bash
IFS=.
while read jpgfile ext
do
	echo "$jpgfile.png"
done
