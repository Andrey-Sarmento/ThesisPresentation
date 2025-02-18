# Diretório
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Pacotes
library(pdftools)
library(magick)
library(purrr)

# Carrega o PDF
pdf_path = 'valors.pdf'
pdf_images = pdf_convert(pdf_path, format = 'png', pages = NULL, dpi = 300)

# Converte as imagens para o formato magick-image
image_list = map(pdf_images, image_read)

# Remove o fundo branco
image_list_transparent = map(image_list, ~ image_transparent(.x, color = 'white'))

# Delay para cada frame
delay_times = c(rep(10, length(image_list)-1), 500)  # 500 centésimos de segundo para o último frame

# Combina as imagens em um GIF e salva
gif = image_animate(image_join(image_list_transparent), delay = delay_times)
image_write(gif, 'valors.gif')
