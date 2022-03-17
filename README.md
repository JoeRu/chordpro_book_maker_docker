# chordpro_book_maker_docker

This is a little helper to build a chordpro pdf from the actual latex-dev-tree of chordpro and directly build a Latex-book/pandoc book/epub and html page out of the requested build.

The mounted directory from `.env` will be mounted to `/data`.
It assumes the requested chorpro files to end on \*.pro (and not the default .cho) - but you can change this by parametrise the `.sh` files in chordpro and latex service folders.

The resulting files will be generated to a new `/data/output/` directory.

*under development* - it's more a code-keeper. But may help on the task.
