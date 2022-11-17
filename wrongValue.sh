#!/bin/bash

expectedOutput="Please enter in the valid format: amount currency i.e. 5 dollars"

javac CurrencyConverter.java
out=$(java CurrencyConverter five dollars)

if [[ "$out" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	exit 1
fi
