# =============================================================================
# Build book
# 2022-01-03
#
# Use this function to build the book instead of the build book button. It does
# some custom things.
# =============================================================================

build_book <- function() {
  # For building a single chapter. Comment out if you want to build the entire book.
  # bookdown::preview_chapter("index.Rmd")
  # For building the entire book. Comment out if you want to build a single chapter.
  bookdown::render_book()
  move_up_logo()
}

# Function to raise the R4Epi logo.
# Used inside of build_book.
move_up_logo <- function() {
  # Grab index.html
  index_html <- readLines("docs/index.html")
  # Replace permanent lines in index.html
  new_index_html <- gsub(pattern = '<h1>Welcome</h1>', replace = '', x = index_html)
  new_index_html <- gsub(pattern = '<!-- R4Epi Hex Sticker -->', replace = '', x = new_index_html)
  new_index_html <- gsub(
    pattern = '<p><img align="right" src="img/r4epi_icon.png" alt="R4Epi hex logo" width="250" height="289" style="margin: 0 1em 0 1em"></p>', 
    replace = '<!-- R4Epi Hex Sticker -->
<img align="right" src="img/r4epi_icon.png" alt="R4Epi hex logo" width="250" height="289" style="margin: 0 1em 0 1em">
<h1>Welcome</h1>', 
    x = new_index_html
  )
  # Overwrite index.html
  writeLines(new_index_html, con = "docs/index.html")
}

