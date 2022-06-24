docker-compose down --remove-orphans
docker-compose run chordpro clear.sh
docker-compose run chordpro make_chordpro_book_guittar.sh Stammeslieder/*.pro output/Stammeslieder
docker-compose run chordpro make_chordpro_book_guittar.sh Essenslieder/*.pro output/Essenslieder
docker-compose run chordpro make_chordpro_book_guittar.sh Meutenlieder/*.pro output/Meutenlieder
docker-compose run chordpro make_chordpro_book_guittar.sh Pfadfinderlieder/Morgenlieder/*.pro output/Morgenlieder
docker-compose run chordpro make_chordpro_book_guittar.sh Pfadfinderlieder/Am_Lagerfeuer/*.pro output/AmLagerfeuer
docker-compose run chordpro make_chordpro_book_guittar.sh Pfadfinderlieder/Abendlieder/*.pro output/Abendlieder
docker-compose run chordpro make_chordpro_book_guittar.sh Pfadfinderlieder/Seemansgarn/*.pro output/Seemansgarn
docker-compose run chordpro make_chordpro_book_guittar.sh Pfadfinderlieder/Fahrten/*.pro output/Fahrten
docker-compose run chordpro make_chordpro_book_guittar.sh Roverlieder/Kneipen-Lieder/*.pro output/Kneipen-Lieder
docker-compose run chordpro make_chordpro_book_guittar.sh Roverlieder/Landsknecht+Soldatenlieder/*.pro output/Landsknecht+Soldatenlieder
docker-compose run chordpro make_chordpro_book_guittar.sh Roverlieder/Politische_Lieder/*.pro output/PolitischeLieder
@REM docker-compose run chordpro prepare.sh

docker-compose run latex make_complete_tex_book.sh liederbuch_gittaristen

docker-compose down --remove-orphans