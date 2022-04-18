docker-compose down --remove-orphans
Copy-Item D:\OneDrive\Dokumente\Liederbuch\Liedersammlung\build\*.tex D:\OneDrive\Dokumente\Liederbuch\Liedersammlung\output\
rm D:\OneDrive\Dokumente\Liederbuch\Liedersammlung\build\*.aux
docker-compose run latex make_tex_book.sh
docker-compose down --remove-orphans