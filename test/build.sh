# latest
rm -rf Makefile make.bat build source
docker run --rm -v $PWD:/docs driller/sphinx:base sphinx-quickstart -q -p test -a auther --sep
docker run --rm -v $PWD:/docs driller/sphinx:base make html
docker run --rm -v $PWD:/docs driller/sphinx:base make epub
docker run --rm -v $PWD:/docs driller/sphinx:pdf make latexpdf

rm -rf Makefile make.bat build source
docker run --rm -v $PWD:/docs driller/sphinx sphinx-quickstart -q -p test -a auther --sep
docker run --rm -v $PWD:/docs driller/sphinx make html
docker run --rm -v $PWD:/docs driller/sphinx make epub

# 2.3
rm -rf Makefile make.bat build source
docker run --rm -v $PWD:/docs driller/sphinx:2.3 sphinx-quickstart -q -p test -a auther --sep
docker run --rm -v $PWD:/docs driller/sphinx:2.3 make html
docker run --rm -v $PWD:/docs driller/sphinx:2.3 make epub
docker run --rm -v $PWD:/docs driller/sphinx:pdf2.3 make latexpdf
