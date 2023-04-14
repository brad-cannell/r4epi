# =============================================================================
# Sample No/Yes
# 2023-04-14
#
# Helper function for sampling No and Yes - Simplified
#
# Made to work with
# sample_ny
# make_pop
# templates
# plot_pop
# =============================================================================
sample_ny <- function(n = 100, prob_y = 0.5) {
  sample(c("No", "Yes"), n, TRUE, c(1 - prob_y, prob_y))
}

# For testing
# sample_ny(prob_y = 0.1)