#!/bin/bash
touch ~/.todo
i=0
while IFS= read line
do
    	i=`expr $i + 1`
	sed ${i}s/^[0-9]*/${i}/ ~/.todo > ~/.todo.new
cp ~/.todo.new ~/.todo
done < ~/.todo

