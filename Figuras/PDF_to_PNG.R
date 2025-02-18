library(magick)
library(pdftools)

img1 = image_read_pdf('Figuras/PDFs/F1.pdf', density = 1000)
img1 = image_transparent(img1, 'white')
image_write(img1, 'Figuras/F1.png', format = 'png')

img2 = image_read_pdf('Figuras/PDFs/F2.pdf', density = 1000)
img2 = image_transparent(img2, 'white') 
image_write(img2, 'Figuras/F2.png', format = 'png')

img3 = image_read_pdf('Figuras/PDFs/F3.pdf', density = 1000)
img3 = image_transparent(img3, 'white') 
image_write(img3, 'Figuras/F3.png', format = 'png')

img4 = image_read_pdf('Figuras/PDFs/F4.pdf', density = 1000)
img4 = image_transparent(img4, 'white') 
image_write(img4, 'Figuras/F4.png', format = 'png')

img5 = image_read_pdf('Figuras/PDFs/REACT.pdf', density = 1000)
img5 = image_transparent(img5, 'white') 
image_write(img5, 'Figuras/REACT.png', format = 'png')

img6 = image_read_pdf('Figuras/PDFs/Monotonicidade00.pdf', density = 1000)
img6 = image_transparent(img6, 'white') 
image_write(img6, 'Figuras/Monotonicidade00.png', format = 'png')

img7 = image_read('Figuras/valors_40.png', density = 1000)
img7 = image_transparent(img7, 'white') 
image_write(img7, 'Figuras/valors2_40.png', format = 'png')
