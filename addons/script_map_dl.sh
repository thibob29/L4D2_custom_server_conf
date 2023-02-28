#!/bin/bash

while IFS=, read name link
 do wget $name -O $link 
done < url.txt #input file, name space link
