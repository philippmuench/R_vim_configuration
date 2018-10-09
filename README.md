nvim setup for R (with R markdown support). Supports linting for `.R` files.

Usage:
- open a file using nvim `yourfile.R` or `yourfile.Rmd`
- `_` inserts `<-`
- `\ro` opens the object browser
- `\rf` open R console and close R session with `\rq`
- `:RStop` stop R
- `\rr` clears the R console
- `\rv` views the data.frame (selected)i
- `\rh` shows the help
- if this is a `.Rmd` file, knitr `.html` can be creatied using `\kh`
- `:space:` send code line to R console, `\aa` sends the whole file and `\cc` the current chunk (i.e. for R markdown files)`
