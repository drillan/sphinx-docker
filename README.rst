docker-sphinx
=============

Docker image for Sphinx build.

Images
------

* tk0miya/sphinx:base
* tk0miya/sphinx:pdf

.. note:: ``tk0miya/sphinx:pdf`` contains TeXLive packages. So the image is very large (over 2GB!).

Usage
-----

Create a Sphinx project::

  $ docker run --rm -v /path/to/document:/docs tk0miya/sphinx sphinx-quickstart

Build HTML document::

  $ docker run --rm -v /path/to/document:/docs tk0miya/sphinx make html

Build EPUB document::

  $ docker run --rm -v /path/to/document:/docs tk0miya/sphinx make epub

Build PDF document::

  $ docker run --rm -v /path/to/document:/docs tk0miya/sphinx:pdf make latexpdf

Build HTML document with specified version::

  $ docker run --rm -v /path/to/document:/docs tk0miya/sphinx:2.3 make html

Build EPUB document with specified version::

  $ docker run --rm -v /path/to/document:/docs tk0miya/sphinx:2.3 make epub

Build PDF document with specified version::

  $ docker run --rm -v /path/to/document:/docs tk0miya/sphinx:pdf2.3 make latexpdf

Tips
----

If you would like to install dependencies, use ``tk0miya/sphinx:base`` as a base image::

  # in your Dockerfile
  FROM tk0miya/sphinx:base

  WORKDIR /docs
  ADD requirements.txt /docs
  RUN pip3 install -r requirements.txt
