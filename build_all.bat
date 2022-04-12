docker-compose down --remove-orphans
docker-compose run chordpro clear.sh
docker-compose run chordpro make_chordpro_book.sh Stammeslieder/*.pro output/Stammeslieder
docker-compose run chordpro make_chordpro_book.sh Essenslieder/*.pro output/Essenslieder
docker-compose run chordpro make_chordpro_book.sh Meutenlieder/*.pro output/Meutenlieder
docker-compose run chordpro make_chordpro_book.sh Pfadfinderlieder/Morgenlieder/*.pro output/Morgenlieder
docker-compose run chordpro make_chordpro_book.sh Pfadfinderlieder/Am_Lagerfeuer/*.pro output/AmLagerfeuer
docker-compose run chordpro make_chordpro_book.sh Pfadfinderlieder/Abendlieder/*.pro output/Abendlieder
docker-compose run chordpro make_chordpro_book.sh Pfadfinderlieder/Seemansgarn/*.pro output/Seemansgarn
docker-compose run chordpro make_chordpro_book.sh Pfadfinderlieder/Fahrten/*.pro output/Fahrten
docker-compose run chordpro make_chordpro_book.sh Roverlieder/Kneipen-Lieder/*.pro output/Kneipen-Lieder
docker-compose run chordpro make_chordpro_book.sh Roverlieder/Landsknecht+Soldatenlieder/*.pro output/Landsknecht+Soldatenlieder
docker-compose run chordpro make_chordpro_book.sh Roverlieder/Politische_Lieder/*.pro output/PolitischeLieder
docker-compose run chordpro prepare.sh

docker-compose run latex make_all.sh
docker-compose down --remove-orphans