docker-compose down --remove-orphans
@REM docker-compose build
@REM + --no-cache
docker-compose run chordpro make_chordpro_book.sh
docker-compose run latex make_tex_book.sh
docker-compose down --remove-orphans