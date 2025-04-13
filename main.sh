#!/bin/bash

#main.sh [remote-repo-address] [target-directory] [service-to-restart(apache,apache2, nginx, etc)]

#Clone the remote repo
git clone $1 clonedRepo
echo "✅ Successfully Cloned Repo"

#remove all of the git stuff from the repo before we move it over
rm clonedRepo/.gitattributes
rm clonedRepo/ .git
echo "✅ Successfully Prepared Repository Folder"

#Move the new contents over
rm $2/*
mv clonedRepo/* $2
echo "✅ Moved Repo Folder Contents to Target Directory"

#remove the cloned repo folder which gets everything cleaned up and ready for the next run
rm -r clonedRepo
systemctl restart $3
echo "✅ Opperation Finished Successfully "

