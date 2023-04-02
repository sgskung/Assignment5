
<!-- README.md is generated from README.Rmd. Please edit that file -->

**NOTE: This is a toy package created for expository purposes, for the
second edition of [R Packages](https://r-pkgs.org). It is not meant to
actually be useful. If you want a package for factor handling, please
see [stringr](https://stringr.tidyverse.org),
[stringi](https://stringi.gagolewski.com/),
[rex](https://cran.r-project.org/package=rex), and
[rematch2](https://cran.r-project.org/package=rematch2).**

# Assignment5 (regexcite)

<!-- badges: start -->
<!-- badges: end -->

The goal of regexcite is to make regular expressions more exciting! It
provides convenience functions to make some common tasks with string
manipulation and regular expressions a bit easier.

## Installation

You can install the development version of regexcite from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("jkungcc/Assignment5")
```

## Usage

A fairly common task when dealing with strings is the need to split a
single string into many parts. This is what `base::strplit()` and
`stringr::str_split()` do.

``` r
(x <- "alfa,bravo,charlie,delta")
#> [1] "alfa,bravo,charlie,delta"
strsplit(x, split = ",")
#> [[1]]
#> [1] "alfa"    "bravo"   "charlie" "delta"
stringr::str_split(x, pattern = ",")
#> [[1]]
#> [1] "alfa"    "bravo"   "charlie" "delta"
```

Notice how the return value is a **list** of length one, where the first
element holds the character vector of parts. Often the shape of this
output is inconvenient, i.e. we want the un-listed version.

That’s exactly what `regexcite::str_split_one()` does.

``` r
library(Assignment5)

str_split_one(x, pattern = ",")
#> [1] "alfa"    "bravo"   "charlie" "delta"
```

Use `str_split_one()` when the input is known to be a single string. For
safety, it will error if its input has length greater than one.

`str_split_one()` is built on `stringr::str_split()`, so you can use its
`n` argument and stringr’s general interface for describing the
`pattern` to be matched.

``` r
str_split_one(x, pattern = ",", n = 2)
#> [1] "alfa"                "bravo,charlie,delta"

y <- "192.168.0.1"
str_split_one(y, pattern = stringr::fixed("."))
#> [1] "192" "168" "0"   "1"
```

We additionally have a function called my_add, added as part of part two of Individual Assignment 5.

Description:
Adds two numeric values together, with an optional default value for y.

Usage:
``` r
my_add(x, y = 10)
my_add(10)
#> [1] 20
```

Arguments:
- x: numeric value to be added
- y: numeric value to be added with x. Defaults to 10 if not provided.

Value:
The result of adding x and y.

Note:
- If either x or y is NA, the function returns NA.
- If either x or y is non-numeric, the function throws an error with the message "One of your inputs contains a string value".

Examples (This documentation is adapted from the Assignment 5 assignment guidelines from UBC DSCI 310):
my_add(1, 2)          # output: 3
my_add(1)             # output: 11
my_add(NA)            # output: NA
my_add(10, NA)        # output: NA
my_add("10", "20")    # throws an error with the message "One of your inputs contains a string value"
