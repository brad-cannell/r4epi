# =============================================================================
# Templates
# 2023-04-14
#
# Grab colors and other templates that we use throughout the book.
# 
# Made to work with
# sample_ny
# make_pop
# templates
# plot_pop
# =============================================================================

# For installation
# devtools::install_github("brad-cannell/templates")

# Load colors
library(dplyr, warn.conflicts = FALSE)
library(templates)
data("my_colors")

# Pull orange and blue colors from templates package
u_orange <- filter(my_colors, description == "University Orange") |> pull(hex)
u_blue <- filter(my_colors, description == "University Blue") |> pull(hex)