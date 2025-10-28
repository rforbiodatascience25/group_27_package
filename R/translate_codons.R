#' Translate codons into an amino acid sequence
#'
#' This function takes a vector of codons (e.g., "AUG", "UUU", "GGC")
#' and translates it into the corresponding amino acid sequence
#' using the `codon_table` stored in your package.
#'
#' @param codons A character vector containing codon triplets (e.g., c("AUG", "UUU", "GGC")).
#'
#' @return A single character string representing the translated amino acid sequence.
#'
#' @examples
#' codon_table <- c(AUG = "M", UUU = "F", GGC = "G")
#' translate_codons(c("AUG", "UUU", "GGC"))
#' # Expected output: "MFG"
#'
#' @export
translate_codons <- function(codons) {
  amino_acid_sequence <- paste0(codon_table[codons], collapse = "")
  return(amino_acid_sequence)
}
