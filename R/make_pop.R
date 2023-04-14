# =============================================================================
# Make a Population
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

library(dplyr, warn.conflicts = FALSE)
library(tidyr)

# Create a pop of size x with e prop exposed and o prop with outcome
make_pop <- function(n_total = 100, 
                     prob_exposed, 
                     prob_outcome_exposed,
                     prob_outcome_unexposed,
                     arrange = FALSE) {
  # Figure out the smallest integer that will be at least size
  # n_total when multiplied by 2. The idea is to figure out the dimensions
  # for the closest thing I can get to a square given n_total
  n_sqrt <- sqrt(n_total)
  n_sqrt_ceiling <- ceiling(n_sqrt)
  drop <- n_sqrt_ceiling^2 - n_total
  
  # Make coordinates for grid of points
  pop <- expand_grid(
    x = seq(n_sqrt_ceiling),
    y = seq(n_sqrt_ceiling)
  )
  
  # Drop of n_sqrt is uneven. Drop from bottom right corner.
  # High x, low y.
  pop <- pop |> 
    arrange(desc(y)) |> 
    slice(1:(n() - drop)) |> 
    arrange(x, y)
  
  # I still want y to be base 1
  pop$y <- pop$y + (1 - min(pop$y))
  
  # Add exposed and unexposed
  # Helper function for sampling No and Yes - Simplified
  sample_ny <- function(n = 100, prob_y = 0.5) {
    sample(c("No", "Yes"), n, TRUE, c(1 - prob_y, prob_y))
  }
  
  # Add exposed
  pop$exposed <- sample_ny(n = n_total, prob_y = prob_exposed)
  
  # Add outcome
  pop$outcome <- NA_character_
  n_exp_y <- sum(pop$exposed == "Yes")
  n_exp_n <- sum(pop$exposed == "No")
  pop$outcome[pop$exposed == "Yes"] <- sample_ny(n_exp_y, prob_y = prob_outcome_exposed)
  pop$outcome[pop$exposed == "No"] <- sample_ny(n_exp_n, prob_y = prob_outcome_unexposed)
  
  # Add exposure-outcome group columns
  # To combine the legend, we need to have a single variable with exposure 
  # and outcome information.
  pop <- pop |> 
    mutate(
      e_o = case_when(
        exposed == "Yes" & outcome == "Yes" ~ "a",
        exposed == "Yes" & outcome == "No" ~ "b",
        exposed == "No" & outcome == "Yes" ~ "c",
        exposed == "No" & outcome == "No" ~ "d"
      ),
      e_o_f = factor(
        e_o, c("a", "b", "c", "d"),
        c(
          "Exposed - Outcome", "Exposed - No Outcome", 
          "Not exposed - Outcome", "Not exposed - No outcome"
        )
      )
    )
  
  # Arrange 
  # Sometimes I want the exposed-unexposed to be haphazardly spread around the 
  # plot. Sometimes, I want the exposed next to the exposed and the unexposed 
  # next to the unexposed.
  if (arrange) {
    # Separate x and y from the rest of the data before arranging
    x_y <- select(pop, x, y)
    pop <- pop |> 
      select(-x, -y) |> 
      arrange(desc(exposed), desc(outcome))
    # Add x and y back
    pop <- bind_cols(x_y, pop)
  }
  
  # Return tibble
  pop
}

# For testing
# set.seed(123)
# make_pop(
#   n_total = 100,
#   prob_exposed = 0.5,
#   prob_outcome_exposed = 0.5,
#   prob_outcome_unexposed = 0.1,
#   arrange = FALSE
# )