FROM python:slim
LABEL maintainer="Sphinx Team <https://github.com/sphinx-doc/sphinx>"

WORKDIR /docs
RUN apt-get update \
 && apt-get install -y \
      curl \
      git \
      graphviz \
      make \
      unzip \
      vim \
 && apt-get autoremove \
 && apt-get clean

RUN python3 -m pip install -U pip
RUN python3 -m pip install Sphinx
