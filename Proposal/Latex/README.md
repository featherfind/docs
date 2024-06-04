Use the following commands in sequence:
```bash
pdflatex KECReport.tex -interaction=nonstopmode
bibtex KECReport
pdflatex KECReport.tex -interaction=nonstopmode
pdflatex KECReport.tex -interaction=nonstopmode
```