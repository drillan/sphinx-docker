FROM sphinxdoc/sphinx
LABEL maintainer="Sphinx Team <https://www.sphinx-doc.org/>"

WORKDIR /docs
RUN python3 -m pip install -U pip
RUN python3 -m pip install Sphinx=="2.4.*"

CMD ["make", "html"]
