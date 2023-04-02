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
