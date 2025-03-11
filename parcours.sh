#!/bin/bash

WORKDIR=/scrypt_exercice

for file in $(ls $WORKDIR);do
	echo "-------------"
	echo $(basename $file)
	cat $file
	echo "Type de fichier : "
	case  $file in
		*.py)
			echo "C'est un script python"
			;;
		*.sh)
			echo "C'est un script shell"
			;;
		*.txt)
			echo "C'est un fichier texte"
			;;
		*)
			echo "Type de fichier inconnu"
			;;
	echo "-------------"
done

