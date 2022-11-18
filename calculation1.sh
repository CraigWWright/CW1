#!/bin/bash

#creates expected output
expectedOutput="1.0 Dollars = 0.74 Pounds"

#runs program to check calculations are working
javac CurrencyConverter.java
out=$(java CurrencyConverter 1 dollars)

outShrt=${out:0:25}

#checks output from program is correct
if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi
