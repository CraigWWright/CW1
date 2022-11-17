#!/bin/bash

expectedOutput="1.0 Dollars = 0.74 Pounds"

javac CurrencyConverter.java
out=$(java CurrencyConverter 1 dollars)

outShrt=${out:0:25}

if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi
