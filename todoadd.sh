#!/bin/bash
touch ~/.todo
for x in "$@"
do
    val=$(echo `cut -d ' ' -f 1 < ~/.todo | sort -nr | head -n1` + 1 | bc 2> /dev/null)
    if [ -z "$val" ]
    then
      val=1
    fi
    printf $val >> ~/.todo
    printf " " >> ~/.todo
    printf "$x\n"  >> ~/.todo ;
done
