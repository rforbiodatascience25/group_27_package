#' Plot amino acid frequency in a sequence
#'
#' @param sequence Character string, Amino acid sequence
#' @return A ggplot object showing the frequency of each amino acid.
#'
#' @examples
#' plot_amino_acid_counts("MAFTIG")
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @export
plot_amino_acid_counts <- function(sequence) {

  # Split the sequence into individual characters and keep unique amino acids
  amino_acids <- sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Count occurrences of each amino acid in the sequence
  counts <- sapply(amino_acids, function(amino_acid)
    stringr::str_count(string = sequence, pattern = amino_acid)
  ) |>
    as.data.frame()

  # Rename column and store amino acid identifiers
  colnames(counts) <- c("Count")
  counts[["AminoAcid"]] <- rownames(counts)

  # Create a bar plot of amino acid frequencies
  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = AminoAcid, y = Count, fill = AminoAcid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}
