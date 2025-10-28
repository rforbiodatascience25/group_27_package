test_that("translate_codons works correctly", {
  codon_table <- c(AUG = "M", UUU = "F", GGC = "G")

  expect_equal(translate_codons(c("AUG", "UUU", "GGC")), "MFG")
  expect_equal(translate_codons(c("AUG")), "M")
  expect_equal(translate_codons(character(0)), "")
})
