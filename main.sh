#!/bin/bash

#main.sh [remote-repo-address] [target-directory]

git clone $1 clonedRepo
echo "✅ Successfully Cloned Repo"

rm clonedRepo/.gitattributes
rm clonedRepo/ .git
echo "✅ Successfully Prepared Repository Folder"

rm $2/*
mv clonedRepo/* $2
echo "✅ Moved Repo Folder Contents to Target Directory"

rm -r clonedRepo
echo "✅ Opperation Finished Successfully "

