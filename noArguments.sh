#!/bin/bash

#creates expected output
expectedOutput="Please enter in the valid format"

#runs program with no inputs
javac CurrencyConverter.java
out=$(java CurrencyConverter)

outShrt=${out:0:32}

#checks output from program is correct
if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi



