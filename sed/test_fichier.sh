#! /bin/sh

for i in "$@" ; do
    echo "$i : "
    if [ -L "$i" ] ; then echo " (lien symbolique) " ; fi
    if [ -e "$i" ] ; then
        echo -n " type = "
        if [ -b "$i" ] ; then echo "special bloc " ; fi 
        if [ -c "$i" ] ; then echo "special caract√re " ; fi
        if [ -d "$i" ] ; then echo "repertoire " ; fi
        if [ -f "$i" ] ; then echo "fichier r√gulier " ; fi
        if [ -p "$i" ] ; then echo "tube nomm√ " ; fi
        if [ -S "$i" ] ; then echo "socket " ; fi
        if [ -b "$i" ] ; then echo "special bloc " ; fi
        if [ -b "$i" ] ; then echo "special bloc " ; fi
        if [ -b "$i" ] ; then echo "special bloc " ; fi
        if [ -b "$i" ] ; then echo "special bloc " ; fi
    else
        echo " n' existe pas"
    fi
done
