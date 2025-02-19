# Diretório:

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

library(pdftools)

# Converter PDF para PNG
pdf_convert('HeatmapH0.pdf', format = 'png', dpi = 300, filenames = 'HeatmapH0.png')
pdf_convert('HeatmapH1.pdf', format = 'png', dpi = 300, filenames = 'HeatmapH1.png')
