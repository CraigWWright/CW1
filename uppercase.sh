#!/bin/bash

#creates expected output
expectedOutput="5.0 Dollars = 3.7 Pounds"

#runs program with currency in uppercase
javac CurrencyConverter.java
out=$(java CurrencyConverter 5 DOLLARS)

outShrt=${out:0:24}

#checks output from program is correct
if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi
