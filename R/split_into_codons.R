#' Split a nucleotide sequence into columns
#'
#' @param nucleotide_sequence a sequence of nucleotides as string
#' @param start an integer number giving the start of the sequence
#'
#' @returns codons a character vector containing codons
#' @export
#'
#' @examples
#' split_into_codons("ATGCGTACG")
#' #> [1] "ATG" "CGT" "ACG"
#' split_into_codons("ATGCGTACG", start = 2)
#' #> [1] "TGC" "GTA"
#'
split_into_codons <- function(nucleotide_sequence, start = 1){
  number_nucleotides <- nchar(nucleotide_sequence)
  codons <- substring(nucleotide_sequence,
                      first = seq(from = start, to = number_nucleotides-3+1, by = 3),
                      last = seq(from = 3+start-1, to = number_nucleotides, by = 3))
  return(codons)
}
