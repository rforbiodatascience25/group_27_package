test_that("dna_to_rna correctly converts DNA to RNA", {
  expect_equal(dna_to_rna("ATTGCT"), "AUUGCU")
})
