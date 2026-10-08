#' Gráfico de dispersão personalizado
#'
#' Faz um gráfico de dispersão com o pacote lattice, com símbolo e cor
#' fixos.
#'
#' @param x Uma fórmula do tipo `y ~ x`.
#' @param ... Outros argumentos passados para [lattice::xyplot()].
#'
#' @returns Um objeto da classe `trellis`, desenhado ao ser impresso.
#'
#' @export
#'
#' @examples
#' meuxy(dist ~ speed, data = cars)
meuxy <- function(x, ...) {
    lattice::xyplot(x, pch = 4, col = 1, ...)
}
