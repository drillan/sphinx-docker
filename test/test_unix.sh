# latest
rm -rf Makefile make.bat build source
docker run --rm -v $PWD:/docs sphinxdoc/sphinx sphinx-quickstart -q -p test -a auther --sep
docker run --rm -v $PWD:/docs sphinxdoc/sphinx
docker run --rm -v $PWD:/docs sphinxdoc/sphinx make html
docker run --rm -v $PWD:/docs sphinxdoc/sphinx make epub
docker run --rm -v $PWD:/docs sphinxdoc/sphinx-latexpdf
docker run --rm -v $PWD:/docs sphinxdoc/sphinx-latexpdf make latexpdf

# 2.3
rm -rf Makefile make.bat build source
docker run --rm -v $PWD:/docs sphinxdoc/sphinx:2.3 sphinx-quickstart -q -p test -a auther --sep
docker run --rm -v $PWD:/docs sphinxdoc/sphinx:2.3
docker run --rm -v $PWD:/docs sphinxdoc/sphinx:2.3 make html
docker run --rm -v $PWD:/docs sphinxdoc/sphinx:2.3 make epub
docker run --rm -v $PWD:/docs sphinxdoc/sphinx-latexpdf:2.3
docker run --rm -v $PWD:/docs sphinxdoc/sphinx-latexpdf:2.3 make latexpdf
