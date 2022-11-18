#!/bin/bash

#creates expected output
expectedOutput="Please enter a valid currency"

#runs program with wrong currency
javac CurrencyConverter.java
out=$(java CurrencyConverter 5 yen)

outShrt=${out:0:29}

#checks output from program is correct
if [[ "$outShrt" == "$expectedOutput" ]]
then
	echo "Test Passsed!"
else
	echo "fail"
	exit 1
fi
