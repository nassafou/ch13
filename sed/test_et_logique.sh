#! /bin/sh

echo -n "Fichier a examiner : " &&
read F &&
echo -n "Texte recherch√ : " &&
read T &&
grep $T $F > /dev/null &&
echo "Le text $T a √t√ touv√"

