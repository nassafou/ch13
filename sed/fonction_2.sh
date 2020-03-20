#! /bin/sh

additionne ()
{
    # Cette routine additionne tous ses arguments, et 
    # affiche le resultat sur la sortie standard 
    local somme
    local i
    somme=0
    for i in "$@" ; do 
        somme=$((somme + i ))
    done 
    echo $somme 
}


  # Appeler la fonction avec les arguments recus
  # en ligne de commande
additionne "$@"











