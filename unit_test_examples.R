# Testing testthat

# Requires: packages
# install.packages('testthat')
# install.packages('devtools')
# install.packages('remotes')

# Create a function that takes any numeric data frame (all variables are numbers), finds the mean of all columns, then finds the maximum column mean, and the minimum column mean from that data frame, & returns those min and max mean values in a vector (min_mean_value, max_mean_val).

# apply(X = df, MARGIN = 2, FUN = mean, na.rm = TRUE)

library(testthat)

#' Mean Range Finder
#' 
#' This function finds the mean value for each column in a given data frame, then it returns a vector that contains the minimum and maximum mean range values.
#'
#' @param df The given data frame
#'
#' @return
#' @export
#'
#' @examples
mean_range <- function(df) {
  
  col_means <- apply(df, 2, mean, na.rm = TRUE)
  
  col_mean_max <- max(col_means)
  col_mean_min <- min(col_means)
  return(c(col_mean_min, col_mean_max))
}

expect_length(mean_range(df = mtcars), 2)

expect_true(mean_range(mtcars)[1] < mean_range(mtcars)[2])

expect_type(mean_range(mtcars), "double") 






