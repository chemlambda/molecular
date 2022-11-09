#!/bin/sh


printf "choose a file from the list: \n"

cd ./mol

ls *.mol

printf "> "

read firstarg

cp $firstarg ../useit.mol

filename=${firstarg%%.*}

cd ..

awk -f quiner-mod.awk useit.mol


cp firstpart_q.txt  "$filename".html

cat essy.txt >> "$filename".html

cat lastpart.txt >> "$filename".html

rm useit.mol
