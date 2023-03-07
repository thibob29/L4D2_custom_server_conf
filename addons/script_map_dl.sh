#!/bin/bash

while IFS=, read link name
 do wget $link -O $name 
done < url.txt #input file, name space link
echo "Custom maps: " > ../motd.txt | ls |grep .vpk |awk -F '.vpk' '{print $1}' >> ../motd.txt #Write installed custom maps in motd.txt, removing .vpk
