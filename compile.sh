#!/bin/sh

for infile in src/*/main.tex; do
    outdir=$(dirname "${infile}")
    latexmk $infile -pdf -outdir=$outdir -halt-on-error
done
