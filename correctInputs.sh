#!/bin/bash

expectedOutput="5.0 Dollars = 3.7 Pounds"

javac CurrencyConverter.java
out=$(java CurrencyConverter 5 dollars)

outShrt=${out:0:24}

if [[  "$outShrt" == "$expectedOutput"  ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi
