context("startsWith/endsWith")

test_that("startsWith/endsWith", {
  # adapted from R's unit tests
  t1 = c("Foobar", "bla bla", "something", "another", "blu", "brown", "blau blüht der Enzian")
  t2 = c("some text", "any text")
  t3 = c("Martin", "Zürich", "Mächler")

  expect_true(all(startsWith(t1, "")))
  expect_true(all(endsWith(t1, "")))
  expect_true(all(endsWith(t2, "")))
  expect_true(all(startsWith(t2, "")))
  expect_true(all(endsWith(t3, "")))
  expect_true(all(startsWith(t3, "")))
  expect_true(all(endsWith(t2, "text")))
  expect_true(all(endsWith(t2, " text")))
  expect_identical(startsWith(t1, "b" ), c(FALSE, TRUE, FALSE, FALSE, TRUE,  TRUE, TRUE))
  expect_identical(startsWith(t1, "bl"), c(FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE))
  expect_identical(startsWith(t1, "bla"),c(FALSE, TRUE, FALSE, FALSE,FALSE, FALSE, TRUE))
  expect_identical(endsWith(t1, "n"),  c(FALSE,FALSE, FALSE, FALSE,FALSE,  TRUE, TRUE))
  expect_identical(endsWith(t1, "an"), c(FALSE,FALSE, FALSE, FALSE,FALSE, FALSE, TRUE))
  expect_identical(startsWith(t3, "M" ), c( TRUE, FALSE, TRUE))
  expect_identical(startsWith(t3, "Ma"), c( TRUE, FALSE, FALSE))
  expect_identical(startsWith(t3, "Mä"), c(FALSE, FALSE, TRUE))
})