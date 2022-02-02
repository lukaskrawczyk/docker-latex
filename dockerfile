FROM ubuntu:focal
MAINTAINER Lukas Krawczyk <docker-latex@krawczyk.at>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -qy \
	texlive-full \
	texlive-latex-recommended \
	texlive-latex-extra \
	texlive-bibtex-extra \
	texlive-science \
	texlive-xetex \
	cm-super \
	pandoc \
	dvipng \
	biber \
	xindy \
	latexmk \
	latexml \
	texlive-lang-german \
	git curl


VOLUME ["/vol"]
WORKDIR /vol
CMD ["bash"]
