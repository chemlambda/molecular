This folder contains a variant of the quiner program from 

https://github.com/chorasimilarity/chemlambda-gui/blob/gh-pages/dynamic/README.md

and an universal visualizer for the chemlambda library of simulations. 

In order to use the quiner-mod program: 

you need mol files, either you write yours or you take them from the library 
https://github.com/chorasimilarity/chemlambda-gui/tree/gh-pages/dynamic/mol 
and you put them in your local folder ./mol/ 

Once all this is set up, do:

bash quiner-mod.sh

you'll see the list of mol files (from your folder) and you write the name of your file.mol and hit enter.

You'll see that file.html appeared in your folder. Open it with a browser.

If you want to change parameters, then open with a text editor quiner-mod.awk and modify the parameters between the lines 16-80. Don't touch the other parameters if you don't understand them.


The universal visualizer extracts the rewrites from the simulation file.html and produces universal.html, with an unique predefined set of parameters. 
You can use it either with the simulation file.html, or you can import the chemlambda library of simulations and then use the universal visualiser with any of the simulations from this library. 



In order to use the  universal visualizer with a generic simulation which you already have do: 

bash getmoves.sh


you'll see the list of html files (i.e. the simulations), pick one and write the complete name, like say file.html 

hit enter

Open universal.html in a browser!


You can use the universal visualizer with the chemlambda collection of simulations. 

In order to import this collection, download it from https://figshare.com/articles/The_Chemlambda_collection_of_simulations/4747390

Then, in the same folder which keeps the 1GB of simulations, put the files from here: getmoves.sh, univision.js, universal.html, modifier.awk and cc-by-4-0.png. 

Now use, as previously:

bash getmoves.sh

you'll see the list of html files (i.e. the simulations), pick one and write the complete name, like say file.html 

hit enter

Open universal.html in a browser!
