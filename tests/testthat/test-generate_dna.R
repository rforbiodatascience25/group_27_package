test_that("generate_dna works correctly", {
  seq10 <- generate_dna(10)
  expect_equal(nchar(seq10), 10)
  expect_true(all(strsplit(seq10, "")[[1]] %in% c("A", "T", "G", "C")))
})
