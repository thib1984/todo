#!/bin/bash
touch ~/.todo
i=0
for x in "$@"
do
    i=`expr $i + 1`
    if [ $i -gt 1 ]
    then
      ligne=`[ ! -z "$x" ] && grep -n "^$x " ~/.todo | cut -d ":" -f 1`
      if [ ! -z "$ligne" ]
      then
        sed ${ligne}s/$/\ \#"$1"/ ~/.todo > ~/.todo.new
        mv ~/.todo.new ~/.todo
      fi
    fi
done
