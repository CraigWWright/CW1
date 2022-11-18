#!/bin/bash


#checks expected output
expectedOutput="5.0 Dollars = 3.7 Pounds"

#runs the program with correct inputs
javac CurrencyConverter.java
out=$(java CurrencyConverter 5 dollars)


outShrt=${out:0:24}

#checks output from program is correct
if [[  "$outShrt" == "$expectedOutput"  ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi
