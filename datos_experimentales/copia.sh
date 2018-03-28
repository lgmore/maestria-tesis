#!/bin/bash
# declare an array called array and define 3 vales
array=(ucid00001 ucid00002 ucid00003 ucid00004 ucid00005 ucid00006 ucid00007 ucid00008 ucid00009 ucid00010)
for i in "${array[@]}"
do
		echo `docker cp trusting_joliot:home/lg_more/dist/$i.tar.gz ./$i.tar.gz`
done
