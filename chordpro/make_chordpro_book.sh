#!/bin/bash
INPUTP=${1:-*.pro}
OUTPUTP=${2:-output/liederbuch}

echo "Eingabe-Dateie(n): $INPUTP"
echo "Ausgabe-Datei: $OUTPUTP.(tex, md)"

if ! [[ -d /data/output/ ]]
then
    mkdir /data/output
fi
cd /data
chordpro --config=build/myconfig.json $INPUTP --output $OUTPUTP.tex
chordpro --config=build/myconfig.json $INPUTP --output $OUTPUTP.md

cp *.png output/
cp *.md output/
#cp *.tex output/
cp -R build/* output/
