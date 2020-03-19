#! /bin/sh

#echo PWD/$HOME/~ 
#fic=$(ls -l "$@")


for fic in "$@"
do
  tr '[[:lower:]]' '[[:upper:]]' < "$fic" > "${fic}.tmp"
  mv "${fic}.tmp" "$fic"

done
