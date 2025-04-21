#!/bin/bash
#Le dossier de travail correspond ici au dossier courant
WORKDIR=${pwd}


#Pour chaque fichier dans le dossier de travail, on affiche son nom de base (sans le chemin absolu), et on vérifie
#si le fichier correspond à l'un des cas (python, shell, texte) sinon inconnu.

for file in $(ls $WORKDIR);do
	echo "-------------"
	echo $(basename $file)
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
		*.csv)
			echo "C'est un fichier CSV"
			;;
		*)
			echo "Type de fichier inconnu"
			;;
	esac
	echo "-------------"
done

