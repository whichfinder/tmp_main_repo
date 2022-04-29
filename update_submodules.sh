#!/bin/bash
if [[ ! -z $1 ]]
    then 
	branch=$1 
    else 
        branch="main"
fi
echo $branch;
for item in $(echo */)
do
    cd $item && git submodule init && git submodule update && git pull origin $branch && cd ..
done;
