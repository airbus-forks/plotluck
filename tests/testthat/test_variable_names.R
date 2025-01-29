
test_that("is robust to variable with utf8 token", {

   #testthat::skip_on_cran()
   if (identical(Sys.getenv("NOT_CRAN"), "true")) {
      expect_error(plotluck(data.frame(a = c(2024, 2025), b = c(1,2)) |> plyr::rename(c("a" = "my¶year")), .~1),
                   NA)
   }

})

test_that("is robust to variable with - sign", {

   #testthat::skip_on_cran()
   if (identical(Sys.getenv("NOT_CRAN"), "true")) {
      expect_error(plotluck(data.frame(a = c(2024, 2025), b = c(1,2)) |> plyr::rename(c("a" = "my-year")), .~1),
                   NA)
   }

})

test_that("is robust to variable that starts with a numeric", {

   #testthat::skip_on_cran()
   if (identical(Sys.getenv("NOT_CRAN"), "true")) {
      expect_error(plotluck(data.frame(a = c(2024, 2025), b = c(1,2)) |> plyr::rename(c("a" = "1_year")), .~1),
                   NA)
   }

})