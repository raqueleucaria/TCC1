FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
    ghostscript \
    texlive-publishers \
    texlive-lang-portuguese \
    texlive-latex-extra \
    texlive-fonts-recommended \
    make \
    texlive-font-utils \
    texlive-extra-utils \
    latexmk \
    python3-pygments \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/latex
