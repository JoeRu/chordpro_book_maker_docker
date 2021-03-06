# chordpro_book_maker_docker

This is a little helper to build a chordpro pdf from the actual latex-dev-tree of chordpro and directly build a [Latex-book](http://songs.sourceforge.net/songsdoc/songs.html)/[pandoc book/epub and html](https://pandoc.org/) page out of the requested build (markdown and tex)

The mounted directory from `.env` will be mounted to `/data`.
It assumes the requested chorpro files to end on \*.pro (and not the default .cho) - but you can change this by parametrise the `.sh` files in chordpro and latex service folders.

It further assumes an existing directory with a containing chordpro config `--config=build/myconfig.json`.
For more details check on 
```
chordpro/make_chordpro_book.sh
latex/make_tex_book.sh
```

The resulting files will be generated to a new `/data/output/` directory.

*under development* - it's more a code-keeper. But may help on the task of creating a Latex-Songbook out of a bunch of chordpro files.
