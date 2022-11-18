#!/bin/bash

#creates expected output
expectedOutput1="1.0 Dollars = 0.74 Pounds"
expectedOutput2="1.0 Dollars = 0.88 Euros"

#runs program to check calculations are working
javac CurrencyConverter.java
out=$(java CurrencyConverter 1 dollars)

outShrt1=${out:0:25}
outShrt2=${out:26:24}

#checks output from program is correct
if [[ "$outShrt1" == "$expectedOutput1" ]] && [[ "$outShrt2" == "$expectedOutput2" ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi
