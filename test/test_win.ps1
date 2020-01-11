$current_path = (Convert-Path .)

# latest
Remove-Item Makefile -Force -Recurse
Remove-Item make.bat -Force -Recurse
Remove-Item source -Force -Recurse
Remove-Item build -Force -Recurse
docker run --rm -v ${current_path}:/docs sphinxdoc/sphinx sphinx-quickstart -q -p test -a auther --sep
docker run --rm -v ${current_path}:/docs sphinxdoc/sphinx
docker run --rm -v ${current_path}:/docs sphinxdoc/sphinx make html
docker run --rm -v ${current_path}:/docs sphinxdoc/sphinx make epub
docker run --rm -v ${current_path}:/docs sphinxdoc/sphinx-latexpdf
docker run --rm -v ${current_path}:/docs sphinxdoc/sphinx-latexpdf make latexpdf

# 2.3
Remove-Item Makefile -Force -Recurse
Remove-Item make.bat -Force -Recurse
Remove-Item source -Force -Recurse
Remove-Item build -Force -Recurse
docker run --rm -v ${current_path}:/docs sphinxdoc/sphinx:2.3 sphinx-quickstart -q -p test -a auther --sep
docker run --rm -v ${current_path}:/docs sphinxdoc/sphinx:2.3
docker run --rm -v ${current_path}:/docs sphinxdoc/sphinx:2.3 make html
docker run --rm -v ${current_path}:/docs sphinxdoc/sphinx:2.3 make epub
docker run --rm -v ${current_path}:/docs sphinxdoc/sphinx-latexpdf:2.3
docker run --rm -v ${current_path}:/docs sphinxdoc/sphinx-latexpdf:2.3 make latexpdf