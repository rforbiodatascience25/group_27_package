test_that("split_into_codons works", {
  expect_equal(split_into_codons("ATGCGTACG", start = 2), c("TGC", "GTA"))
})
