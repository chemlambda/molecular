BEGIN { 

FS =",";
printf("function commands\(\) \{ var commandsArray = \[") > "essy.txt" ;
# this variant 07.09.2019


#
#   used for turning the addNode, etc, commands from a simulation into a js function (array)
#   I started from removing spaces at the beginning
#   awk '{ sub(/^[ \t]+/, ""); print }' bigpred.html > lista.txt
#   awk '/^graph\./{print}' lista.txt > lista2.txt
#   awk '{ sub(/\(/,","); print }' lista2.txt > lista3.txt
#   awk '{ sub(/\);/,""); print }' lista3.txt > lista4.txt
#   awk '{ sub(/graph\./,""); print }' lista4.txt > lista5.txt
#   awk -f modifier.awk lista5.txt
#   mv essy.txt whatever.js
#


#
# 
#
#

}


{


# 

      if ($1 == "removeLink") {

       a="\{c:\"" "rl" "\", a:\{s:" $2 ", t:" $3 "\}\}, \n";
 

      }

      if ($1 == "addLink") {

       a="\{c:\"" "al" "\", a:\{s:" $2 ", t:" $3 ", b:" $4 "\}\}, \n";
       
      }

      if ($1 == "removeNode") {

       a="\{c:\"" "rn" "\", a:\{i:" $2 "\}\}, \n";
       
      }

      if ($1 == "addNode") {

       a="\{c:\"" "an" "\", a:\{i:" $2 ", a:" $3 ", si:" $4 ", co:" $5 "\}\}, \n";
       
      }

b=a "";
printf(b) >> "essy.txt";





}

END {

printf("\{c:\"\" , a:\{i:\"\", a:\"\", si:0, co:\"\" \}\}\]; \n return commandsArray; \n \}") >> "essy.txt";


}









