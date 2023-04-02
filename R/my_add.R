#' Add two numbers
#'
#' @param x A number.
#' @param y Another number.
#'
#' @return A number that is the sum of x and y
#' @export
#'
#' @examples
#' x <- 10
#' y <- 15
#' my_add(x, y)
#' Returns: 25

my_add <- function(x, y = 10) {
  if (is.na(x) || is.na(y)) {
    return(NA)
  } else if (!is.numeric(x) || !is.numeric(y)) {
    stop("One of your inputs contains a string value")
  } else {
    result <- x + y
    return(result)
  }
}
