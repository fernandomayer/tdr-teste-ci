#' Soma de dois números
#'
#' Recebe dois números e devolve a soma deles. Este primeiro parágrafo é a
#' descrição: diz o que a função faz e para que ela serve.
#'
#' @param x,y Vetores numéricos.
#'
#' @details Este campo recebe os detalhes técnicos, quando houver, ou
#'     explica melhor como usar algum argumento.
#'
#' @returns Um vetor numérico com a soma de `x` e `y`.
#'
#' @author Maria Silva
#'
#' @seealso [sum()], que soma todos os elementos de um vetor.
#'
#' @examples
#' soma(2, 2)
#'
#' x <- 3
#' y <- 4
#' soma(x = x, y = y)
#'
#' @export
soma <- function(x, y) {
    x+y
}
