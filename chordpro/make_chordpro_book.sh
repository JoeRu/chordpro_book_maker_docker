#!/bin/bash
INPUTP=${1:-*.pro}
OUTPUTP=${2:-output/liederbuch}

echo "Eingabe-Dateie(n): $INPUTP"
echo "Ausgabe-Datei: $OUTPUTP.(tex, md)"
INPUT_PATH=$(echo $INPUTP | sed 's/\(\/\*\.\)\(pro\|cho\)//g')
echo "Inputpath : $INPUT_PATH"

if ! [[ -d /data/output/ ]]
then
    mkdir /data/output
fi
cd /data
#rm $OUTPUTP.tex
chordpro --config=build/myconfig.json $INPUTP --output $OUTPUTP.tex
#rm $OUTPUTP.md
chordpro --config=build/myconfig.json $INPUTP --output $OUTPUTP.md


cp $INPUT_PATH/*.png output/
cp $INPUT_PATH/*.md output/
#cp *.tex output/

