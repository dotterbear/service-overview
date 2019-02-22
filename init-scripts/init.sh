#!/bin/bash

mode=https;
urls="";

if [ "$1" != "" ] && [[ $1 == "https" || $1 == "ssh" ]] ; then
    echo "mode detected, using $mode to clone projects";
else
    echo "clone mode not detected, using default mode: $mode to clone projects";
fi;

if [ $mode == "https" ] ; then
    urls=$(curl -s https://raw.githubusercontent.com/dotterbear/service-overview/master/init-scripts/https-url.txt);
else
    urls=$(curl -s https://raw.githubusercontent.com/dotterbear/service-overview/master/init-scripts/ssh-url.txt);
fi;

for url in $urls; do
    echo "starting to clone project $url";
    git clone $url;
done
