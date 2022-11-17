#!/bin/bash

expectedOutput="Please enter in the valid format"

javac CurrencyConverter.java
out=$(java CurrencyConverter dollars 5)

outShrt=${out:0:32}

if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	exit 1
fi
