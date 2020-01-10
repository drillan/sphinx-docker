rm -f Makefile make.bat
rm -rf build source

# latest
docker run --rm -v $PWD:/docs driller/sphinx:base sphinx-quickstart -q -p test -a auther --sep
docker run --rm -v $PWD:/docs driller/sphinx:base make html
docker run --rm -v $PWD:/docs driller/sphinx:base make epub
docker run --rm -v $PWD:/docs driller/sphinx:pdf make latexpdf

# 2.3
docker run --rm -v $PWD:/docs driller/sphinx:base2.3 sphinx-quickstart -q -p test -a auther --sep
docker run --rm -v $PWD:/docs driller/sphinx:base2.3 make html
docker run --rm -v $PWD:/docs driller/sphinx:base2.3 make epub
docker run --rm -v $PWD:/docs driller/sphinx:pdf2.3 make latexpdf
