#!/bin/bash
touch ~/.todo
for x in "$@"
do    
    ligne=`[ ! -z "$x" ] && grep -n "^$x " ~/.todo | cut -d ":" -f 1`
    if [ ! -z "$ligne" ]
    then
      sed ${ligne}d ~/.todo > ~/.todo.new
      mv ~/.todo.new ~/.todo
    fi
done
