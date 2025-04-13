#!/bin/bash


git clone https://github.com/austin-alberd/Dev_Portfolio clonedRepo
echo "✅ Successfully Cloned Repo"

rm clonedRepo/.gitattributes
rm clonedRepo/ .git
echo "✅ Successfully Prepared Repository Folder"

rm /var/www/html/*
mv clonedRepo/* /var/www/html
echo "✅ Moved Repo Folder Contents to Target Directory"

rm -r clonedRepo
echo "✅ Opperation Finished Successfully "

