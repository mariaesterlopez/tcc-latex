#!/bin/bash
rm tcc.pdf tcc.aux tcc.lof tcc.log rcc.lot tcc.lsg tcc.toc tcc.bbl tcc.blg
echo 'arquivos removidos'
pdflatex tcc.tex
echo 'gerados arquivos auxiliares'
bibtex tcc
echo 'gerado bibtex'
pdflatex tcc.tex
pdflatex tcc.tex
echo 'arquivo pronto para abrir'
evince tcc.pdf