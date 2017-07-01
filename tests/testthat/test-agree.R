context("agreeing to CDC terms")


test_that("Agreeing to terms works as expected", {
  cdc_agree()
  expect_equal(cdc.env$cdc_terms_agreement, TRUE)
  cdc_agree(TRUE)
  expect_equal(cdc.env$cdc_terms_agreement, TRUE)

})
test_that("Declining the terms works as expected", {
  cdc_agree()
  cdc_agree(FALSE)
  expect_equal(cdc.env$cdc_terms_agreement, FALSE)

})

