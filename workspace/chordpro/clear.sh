#!/bin/bash
if ! [[ -d /data/output/ ]]
then
    mkdir /data/output
else
    cd /data/output
    rm -Rf *
fi
cd /data
cp *.md ./output/
cp *.png ./output/
cp -R build/* output/