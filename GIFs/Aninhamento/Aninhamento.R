# Diret??rio:

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Carregue os pacotes
library(pdftools)
library(magick)
library(purrr)

# Carregue o PDF
pdf_path = 'Aninhamento.pdf'
pdf_images = pdf_convert(pdf_path, format = 'png', pages = NULL, dpi = 300)

# Converta as imagens para o formato magick-image
image_list = map(pdf_images, image_read)

# Remova o fundo branco e torne-o transparente
image_list_transparent = map(image_list, ~ image_transparent(.x, color = "white"))

# Combine as imagens em um GIF
gif = image_animate(image_join(image_list_transparent), fps = 1)  # fps = 1 significa 1 imagem por segundo

# Salve o GIF
image_write(gif, 'Aninhamento.gif')
