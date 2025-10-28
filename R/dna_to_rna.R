#' Convert a DNA sequence to RNA
#'
#' @param dna_sequence A character string representing a DNA sequence
#'
#' @returns A character string representing the RNA sequence with all "T" replaced by "U".
#' @export
#'
#' @examples
#' dna_to_rna("ATTGCT")
#' dna_to_rna("TACG")
dna_to_rna <- function(dna_sequence){
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}
