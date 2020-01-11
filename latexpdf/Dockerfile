FROM sphinxdoc/sphinx
LABEL maintainer="Sphinx Team <https://www.sphinx-doc.org/>"

RUN apt-get install -y \
      latexmk \
      lmodern \
      texlive-latex-recommended \
      texlive-latex-extra \
      texlive-fonts-recommended \
      texlive-fonts-extra \
      texlive-lang-cjk \
      texlive-lang-japanese \
      texlive-luatex \
      texlive-xetex \
 && apt-get autoremove \
 && apt-get clean

CMD ["make", "latexpdf"]