#! /bin/sh

if [ -z *.TGZ ]
 then 
   rm *.TGZ
fi

touch a.TGZ b.TGZ c.TGZ

for i in *.TGZ 
do 
 mv $i ${i%TGZ}tar.gz
done

ls -al *.tar.gz
