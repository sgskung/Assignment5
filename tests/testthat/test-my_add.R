# Test 1: Edge case: x and y are integers
test_that("Test 1: Add two integers", {
  expect_equal(my_add(1, 2), 3)
})

# Test 2: Edge case: x is an integer, y uses default value of 10
test_that("Test 2: Add an integer and the default value", {
  expect_equal(my_add(1), 11)
})

# Test 3: Error case: x is NA
test_that("Test 3: Handling NA values", {
  expect_equal(my_add(NA), NA)
})

# Test 4: Error case: x is numeric but y is NA
test_that("Test 4: Handling NA values in y", {
  expect_equal(my_add(10, NA), NA)
})

# Test 5: Error case: x and y are strings
test_that("Test 5: Handling non-numeric inputs", {
  expect_error(my_add("10", "20"), "One of your inputs contains a string value")
})
