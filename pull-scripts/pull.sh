#!/bin/bash

branch=master;
file="";

if [ "$1" != "" ] && [[ $1 == "master" || $1 == "dev" ]] ; then
    echo "branch detected, pull branch $branch";
else
    echo "branch not detected, using default branch: $branch";
fi;

if [ $branch == "master" ] ; then
    file="./pull-scripts/pull-master.txt"
else
    file="./pull-scripts/pull-dev.txt";
fi;

cd ../

while IFS='|' read -r v1 v2
do
    echo "starting to pull project $v1 $v2";
    cd ../$v1
    git checkout $v2
    git pull origin $v2
done <"$file"