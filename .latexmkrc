$pdf_mode = 1;
@default_files = ('Arbeit.tex');
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode %O %S';
$biber = 'biber %O %B';
push @generated_exts, 'run.xml', 'bcf', 'bbl', 'blg';
