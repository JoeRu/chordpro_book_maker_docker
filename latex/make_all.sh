#!/bin/bash
INPUTP=${1:-Liederbuch}
echo "Parameter für default Filename: $INPUTP(.tex, .md)"

cd /data/output
lualatex $INPUTP.tex
texlua songidx.lua -b bible.can scrpfile.sxd scrpfile.sbx
texlua songidx.lua -b protestant.can cbauth.sxd cbauth.sbx
texlua songidx.lua -b protestant.can cbtitle.sxd cbtitle.sbx
texlua songidx.lua -b protestant.can cbscrip.sxd cbscrip.sbx
lualatex $INPUTP.tex
pandoc $INPUTP.md  metadata.txt --metadata title="Stamm Hattstein Lieder"  --table-of-contents -s -o $INPUTP.html
pandoc --toc --toc-depth=1 --epub-metadata=metadata.txt --epub-cover-image=Stamm-Hattstein-komplett.png --css=liederbuch.css -o $INPUTP.epub metadata.txt $INPUTP.md 