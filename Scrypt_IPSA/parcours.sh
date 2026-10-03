#!/bin/bash
#Le dossier de travail correspond ici au dossier courant dans lequel le script est exécuté (obtenu avec pwd).
WORKDIR=$(pwd)


#Pour chaque fichier dans le dossier de travail, on affiche son nom de base (sans le chemin absolu), et on vérifie
#si le fichier correspond à l'un des cas (python, shell, texte, etc) sinon inconnu.

for file in $(ls $WORKDIR);do
	echo "-------------"
	echo $(basename $file) # Affiche le nom du fichier ainsi que son extension sans le chemin complet 
	echo "Type de fichier : "
	case  $file in
		*.py)
			echo "C'est un script python"
			;;
		
		*.ipynb)
		    echo "C'est un notebook Jupyter"
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

	  	*.json)
		   	echo "C'est un fichier JSON"
		   	;;

		*.sql)
			echo "C'est un script SQL"
			;;

		*)
			echo "Type de fichier inconnu"
			;;
	esac
	echo "-------------"
done

