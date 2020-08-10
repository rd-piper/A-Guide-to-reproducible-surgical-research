# Copy files to web server
system("scp -r -i ~/.ssh/google_compute_engine  ./_book/* rpiper@surgery.rnsh.org:/var/www/html/research-guide/_book")
system("scp -r -i ~/.ssh/google_compute_engine  ./images/* rpiper@surgery.rnsh.org:/var/www/html/research-guide/images")
system("scp -r -i ~/.ssh/google_compute_engine  ./_audio/* rpiper@surgery.rnsh.org:/var/www/html/research-guide/_audio")


# Make each of the outputs
bookdown::render_book(input = "index.Rmd", output_format = 'bookdown::gitbook')
bookdown::render_book(input = "index.Rmd", output_format = 'bookdown::word_document2')
bookdown::render_book(input = "index.Rmd", output_format = 'bookdown::epub_book')
bookdown::render_book(input = "index.Rmd", output_format = 'bookdown::pdf_book')
