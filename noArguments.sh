#!/bin/bash

expectedOutput="Please enter details in the correct order (i.e 5, dollars)"

javac CurrencyConverter.java
out=$(java CurrencyConverter)

outShrt=${out:0:58}

if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passed!"
else
	echo "fail"
	exit 1
fi



