#!/bin/bash
touch ~/.todo
for x in "$@"
do
    ligne=`[ ! -z "$x" ] && grep -n "^$x " ~/.todo | cut -d ":" -f 1`
    if [ ! -z "$ligne" ]
    then
      sed ${ligne}s/\ \#\.\*//g ~/.todo > ~/.todo.new && mv ~/.todo.new ~/.todo  ;
    fi
done
