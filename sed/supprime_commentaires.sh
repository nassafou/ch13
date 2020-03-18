#! /bin/sh

for fic in "$@"
do
  # delete blank lines
  sed -e '/^[[:blank:]]*$/d' $fic |
  # delete comments
  sed -e '/^[[:blank:]]*#/d'
done
