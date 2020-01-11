FROM python:slim
LABEL maintainer="Sphinx Team <https://www.sphinx-doc.org/>"

WORKDIR /docs
RUN apt-get update \
 && apt-get install -y \
      graphviz \
      imagemagick \
      make \
 && apt-get autoremove \
 && apt-get clean

RUN python3 -m pip install -U pip
RUN python3 -m pip install Sphinx Pillow

CMD "if [ -e "requirements.txt" ]; then python -m pip install -r requirements.txt; fi; make html"