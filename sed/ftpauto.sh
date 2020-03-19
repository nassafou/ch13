#! /bin/sh

# Parametre du transfert dÃsirÃ©

MACHINE=${1:?Pas de machine indiquÃe}
CHEMIN=${2:?Pas de chemine indique}
FICHIERS=${3:?Pas de fichier indique}


LOGIN=${4:-anonymous}
PASSWORD=${5:-$USER@HOSTNAME}

# Dabord sauvegardÃ©l'eventuel fichier ~/.netrc

if [ -f ~/.netrc ] ; then
   mv ~/.netrc ~/.netrc.back
fi

# Creer un nouveau ~/.netrc avec les infos concernant 
# uniquement la connexion voulue
ANCIEN_UMASK=$(umask)
umask 0177
echo machine $MACHINE > ~/.netrc
echo login $LOGIN >> ~/.netrc
echo password $PASSWORD >> ~/.netrc

# lancer la connexion 
ftp << -FIN
    open $MACHINE
    bin 
    prompt 
    cd $CHEMIN
    mget $FICHIER 
    quit
FIN
# effacer .netrc 

rm -f ~/.netrc
if [ -f ~/.netrc.back ] ; then
   mv ~/.netrc.back ~/.netrc
