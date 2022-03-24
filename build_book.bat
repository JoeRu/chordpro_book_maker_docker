docker-compose down --remove-orphans
docker-compose build
docker-compose run chordpro make_chordpro_book.sh
docker-compose run latex make_tex_book.sh
docker-compose down --remove-orphans