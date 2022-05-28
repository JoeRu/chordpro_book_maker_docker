#!/bin/bash
INPUTP=${1:-Liederbuch}
echo "Parameter für default Filename: $INPUTP(.tex, .md)"

cd /data/output

perl -p -i -e 's/^# /## /g' Stammeslieder.md Meutenlieder.md
perl -p -i -e 's/^# /### /g' Morgenlieder.md Fahrten.md AmLagerfeuer.md Seemansgarn.md Abendlieder.md Kneipen-Lieder.md Landsknecht+Soldatenlieder.md PolitischeLieder.md 
#Resize images for ebook
mogrify -units PixelsPerInch -density 300 -resize '450x450>' *.png

# --toc --toc-depth=3
pandoc titlepage.md _Stammeslieder.md Stammtoene.md Stammeslieder.md _Essenslieder.md Essenslieder.md _Meutenlieder.md Meutenlieder.md Pfadfinderlieder-Morgenlieder.md Morgenlieder.md Pfadfinderlieder-fahrten.md Fahrten.md Pfadfinderlieder-am_lagerfeuer.md AmLagerfeuer.md Pfadfinderlieder-seemansgarn.md Seemansgarn.md Pfadfinderlieder-abendlieder.md Abendlieder.md Roverlieder_kneipen.md Kneipen-Lieder.md Roverlieder_Soldaten.md Landsknecht+Soldatenlieder.md Roverlieder_politische.md  PolitischeLieder.md Infos_zu_Textern_+_Komponisten.md --metadata-file=metadata.yml --epub-cover-image=horschema_titel.png --toc --toc-depth=3 --css liederbuch.css --epub-embed-font CloisterBlack.otf -o horschema.html
pandoc Stammtoene.md _Stammeslieder.md Stammeslieder.md _Essenslieder.md Essenslieder.md _Meutenlieder.md Meutenlieder.md Pfadfinderlieder-Morgenlieder.md Morgenlieder.md Pfadfinderlieder-fahrten.md Fahrten.md Pfadfinderlieder-am_lagerfeuer.md AmLagerfeuer.md Pfadfinderlieder-seemansgarn.md Seemansgarn.md Pfadfinderlieder-abendlieder.md Abendlieder.md Roverlieder_kneipen.md Kneipen-Lieder.md Roverlieder_Soldaten.md Landsknecht+Soldatenlieder.md Roverlieder_politische.md  PolitischeLieder.md Infos_zu_Textern_+_Komponisten.md --metadata-file=metadata.yml --epub-cover-image=horschema_titel.png --toc --toc-depth=3 --css liederbuch.css --epub-embed-font CloisterBlack.otf -o horschema.epub