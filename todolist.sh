#!/bin/bash
touch ~/.todo
if [ -z "$1" ]
then more ~/.todo
else grep --color "#$1$\|#$1 " ~/.todo
fi
