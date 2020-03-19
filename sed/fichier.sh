#! /bin/sh

if [ -e "$FICHIER" ] ; then 
   echo "Le fichier $FICHIER n'existe pas !" >&2
   exit 1
fi
