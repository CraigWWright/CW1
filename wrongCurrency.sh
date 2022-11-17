#!/bin/bash

expectedOutput="Please enter a valid currency"

javac CurrencyConverter.java
out=$(java CurrencyConverter 5 yen)

outShrt=${out:0:29}

if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passsed!"
else
	echo "fail"
	exit 1
fi
