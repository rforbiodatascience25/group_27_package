#' Generate a random DNA sequence
#'
#' This function generates a random DNA sequence of a specified length,
#' composed of the nucleotides A, T, G, and C.
#'
#' @param length Numeric. The length of the DNA sequence to generate.
#'
#' @return A character string representing the generated DNA sequence.
#'
#' @examples
#' generate_dna(10)
#' generate_dna(20)
#'
#' @export
generate_dna <- function(length){
  bases <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  sequence <- paste0(bases, collapse = "")
  return(sequence)
}
