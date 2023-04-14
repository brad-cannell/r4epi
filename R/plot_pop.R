# =============================================================================
# Make a Population Plot
# 2023-04-14
#
# Adding some helper functions to help with population plots.
# The goal here isn't to teach learners how to make population plots. It is 
# simply to use them as a visual aid for learning about populations and samples.
# 
# Made to work with
# sample_ny
# make_pop
# templates
# plot_pop
# =============================================================================

library(ggplot2)

plot_pop <- function(.data, p_size = 5) {
  
  # Store shape codes
  cir <- 16
  tri <- 17
  
  # Create plot
  p <- ggplot(.data, aes(x, y, color = e_o_f, shape = e_o_f)) + 
    geom_point(size = p_size) +
    scale_color_manual("Exposure-Outcome", values = c(u_orange, u_orange, u_blue, u_blue)) +
    scale_shape_manual("Exposure-Outcome", values = c(tri, cir, tri, cir)) +
    theme(
      panel.background = element_blank(),
      axis.title = element_blank(),
      axis.text = element_blank(),
      axis.ticks = element_blank()
    )
  
  # Return plot object
  p
}

# For testing
# pop_plot(pop, 5)