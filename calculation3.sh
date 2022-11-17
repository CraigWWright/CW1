#!/bin/bash

expectedOutput="1.0 Euros = 1.13 Dollars"

javac CurrencyConverter.java
out=$(java CurrencyConverter 1 euros)

outShrt=${out:0:24}

if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi
