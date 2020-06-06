#!/bin/bash

# Compile tex files then run gnuplot on the .gnuplot generated files to generate .table aux files that contains the function values 
# Run a second time to generate the plot


for filename in *.tex; do
    pdflatex -interaction=nonstopmode "$filename"
done

gnuplot *.gnuplot

for filename in *.tex; do
    pdflatex -interaction=nonstopmode "$filename"
done

# Cleanup
rm *.aux
rm *.log
rm *.gnuplot
rm *.table