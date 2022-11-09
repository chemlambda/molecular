#!/bin/sh


printf "choose a file from the list: \n"

ls *.html

printf "> "

read firstarg

filename=${firstarg%%.*}



awk '{ sub(/^[ \t]+/, ""); print }' $firstarg > lista.txh

awk '/^graph\./{print}' lista.txh > lista2.txh

rm lista.txh

awk '{ sub(/\(/,","); print }' lista2.txh > lista3.txh

rm lista2.txh

awk '{ sub(/\);/,""); print }' lista3.txh > lista4.txh

rm lista3.txh

awk '{ sub(/graph\./,""); print }' lista4.txh > lista5.txh

rm lista4.txh

awk -f modifier.awk lista5.txh

rm lista5.txh

mv essy.txt universal.js



