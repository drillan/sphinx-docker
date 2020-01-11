# docker-sphinx

Docker image for Sphinx build.

## Images

* sphinxdoc/sphinx
* sphinxdoc/sphinx-latexpdf

note:

 ``sphinxdoc/sphinx-latexpdf`` contains TeXLive packages. So the image is very large (over 2GB!).

## Usage

Create a Sphinx project::

```bash
$ docker run --rm -v /path/to/document:/docs sphinxdoc/sphinx sphinx-quickstart
```

Build HTML document::

```bash
$ docker run --rm -v /path/to/document:/docs sphinxdoc/sphinx make html
```

or

```bash
$ docker run --rm -v /path/to/document:/docs sphinxdoc/sphinx
```

Build EPUB document::

```bash
$ docker run --rm -v /path/to/document:/docs sphinxdoc/sphinx make epub
```

Build PDF document::

```bash
$ docker run --rm -v /path/to/document:/docs sphinxdoc/sphinx-latexpdf make latexpdf
```

or

```bash
$ docker run --rm -v /path/to/document:/docs sphinxdoc/sphinx-latexpdf
```

Build HTML document with specified version::

```bash
$ docker run --rm -v /path/to/document:/docs sphinxdoc/sphinx:2.3 make html
```

or

```bash
$ docker run --rm -v /path/to/document:/docs sphinxdoc/sphinx:2.3
```

Build EPUB document with specified version::

```bash
$ docker run --rm -v /path/to/document:/docs sphinxdoc/sphinx:2.3 make epub
```

Build PDF document with specified version::

```bash
$ docker run --rm -v /path/to/document:/docs sphinxdoc/sphinx-latexpdf:2.3 make latexpdf
```

or

```bash
$ docker run --rm -v /path/to/document:/docs sphinxdoc/sphinx-latexpdf:2.3
```

## Tips

If you would like to install dependencies, use ``sphinxdoc/sphinx`` as a base image::

```dockerfile
# in your Dockerfile
FROM sphinxdoc/sphinx

WORKDIR /docs
ADD requirements.txt /docs
RUN pip3 install -r requirements.txt
```
