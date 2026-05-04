FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
    ghostscript \
    texlive-publishers \
    texlive-lang-portuguese \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-font-utils \
    texlive-extra-utils \
    texlive-science \
    texlive-bibtex-extra \
    texlive-pictures \
    biber \
    latexmk \
    make \
    python3-pygments \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/latex