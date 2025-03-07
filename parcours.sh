#!/bin/bash

WORKDIR=/scrypt_exercice

for file in $(ls $WORKDIR);do
	echo "-------------"
	echo $(basename $file)
	cat $file
	echo "-------------"
done

