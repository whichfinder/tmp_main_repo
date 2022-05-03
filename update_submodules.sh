#!/bin/bash
if [[ ! -z $1 ]]
    then 
	branch=$1 
    else 
        branch="main"
fi
echo $branch;
git submodule foreach --recursive git checkout $branch && git submodule init && git submodule update --remote --merge
