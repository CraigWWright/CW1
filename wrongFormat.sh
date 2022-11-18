#!/bin/bash

#creates expected output
expectedOutput="Please enter in the valid format"

#runs program with inputs in the wrong order
javac CurrencyConverter.java
out=$(java CurrencyConverter dollars 5)

outShrt=${out:0:32}

#checks output from program is correct
if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	exit 1
fi
