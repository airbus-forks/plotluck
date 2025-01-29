
test_that("is robust to variable with utf8 token", {

   #testthat::skip_on_cran()
   if (identical(Sys.getenv("NOT_CRAN"), "true")) {
      expect_error(plotluck(tibble::tibble(`year¶int` = c(2024, 2025), value = c(1,2)), .~1),
                   NA)
   }

})

test_that("is robust to variable with - sign", {

   #testthat::skip_on_cran()
   if (identical(Sys.getenv("NOT_CRAN"), "true")) {
      expect_error(plotluck(tibble::tibble(`year-int` = c(2024, 2025), value = c(1,2)), .~1),
                   NA)
   }

})

test_that("is robust to variable that starts with a numeric", {

   #testthat::skip_on_cran()
   if (identical(Sys.getenv("NOT_CRAN"), "true")) {
      expect_error(plotluck(tibble::tibble(`1.year` = c(2024, 2025), value = c(1,2)), .~1),
                   NA)
   }

})