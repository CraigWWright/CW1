#!/bin/bash

#creates expected output
expectedOutput="1.0 Pounds = 1.36 Dollars"

#runs program to check calculations are working
javac CurrencyConverter.java
out=$(java CurrencyConverter 1 pounds)

outShrt=${out:0:25}

#checks output from program is correct
if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi
