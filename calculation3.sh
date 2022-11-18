#!/bin/bash

#creates expected output
expectedOutput1="1.0 Euros = 1.13 Dollars"
expectedOutput2="1.0 Euros = 0.84 Pounds"

#runs program to check calculations are working
javac CurrencyConverter.java
out=$(java CurrencyConverter 1 euros)

outShrt1=${out:0:24}
outShrt2=${out:25:23}

#checks output from program is correct
if [[ "$outShrt1" == "$expectedOutput1" ]] && [[ "$outShrt2" == "$expectedOutput2" ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi
