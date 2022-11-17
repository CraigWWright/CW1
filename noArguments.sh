#!/bin/bash

expectedOutput="Please enter in the valid format"

javac CurrencyConverter.java
out=$(java CurrencyConverter)

outShrt=${out:0:32}

if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi



