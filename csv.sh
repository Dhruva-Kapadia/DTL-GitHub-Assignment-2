#!/bin/bash

for f in normalTrafficTest.txt
do
	while read  GET
	do
		read  UserAgent
		read  Pragma
		read  cachecontrol
		read  Accept
		read  AcceptEncoding
		read  AccceptCharset
		read  AcceptLanguage
		read  Host
		read  Cookie
		read  Connection
	echo " ${GET} ${UserAgent} ${Pragma} ${cachecontrol} ${Accept} ${AcceptEncoding} ${AcceptCharset} ${AcceptLanguage} ${Host} ${Cookie} ${Connection}" >> ofile7.csv
	done < "$f"

done
