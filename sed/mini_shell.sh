#! /bin/sh

while true
do
   echo -n "Entrez une donnée: "
   read ligne
   if [ -z "$ligne" ] 
   then
   break;
   fi
   eval $ligne
done

