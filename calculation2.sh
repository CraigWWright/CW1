#!/bin/bash

expectedOutput="1.0 Pounds = 1.36 Dollars"

javac CurrencyConverter.java
out=$(java CurrencyConverter 1 pounds)

outShrt=${out:0:25}

if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi
