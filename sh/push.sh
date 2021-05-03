#!/bin/bash
echo "commit message = $1."

git add -A .
git commit -m "$1."

git push github --all #master
git push gitlab --all #master

git push github --tags 
git push github --tags 
echo "done----"
