#!/bin/bash

#creates expected output
expectedOutput="Please enter in the valid format: amount currency i.e. 5 dollars"

#runs program with wrong amount type
javac CurrencyConverter.java
out=$(java CurrencyConverter five dollars)

#checks output from program is correct
if [[ "$out" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	exit 1
fi
