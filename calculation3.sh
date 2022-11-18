#!/bin/bash

#creates expected output
expectedOutput="1.0 Euros = 1.13 Dollars"

#runs program to check calculations are working
javac CurrencyConverter.java
out=$(java CurrencyConverter 1 euros)

outShrt=${out:0:24}

#checks output from program is correct
if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi
