#' Hipotenusa de um triângulo retângulo
#'
#' Dados os catetos de um triângulo retângulo, calcula a hipotenusa pelo
#' teorema de Pitágoras.
#'
#' @param a,b Vetores numéricos com os catetos, todos positivos.
#'
#' @details A hipotenusa é \eqn{h = \sqrt{a^2 + b^2}}. Os dois vetores
#'     seguem a regra de reciclagem usual do R.
#'
#' @returns Um vetor numérico com as hipotenusas.
#'
#' @export
#'
#' @examples
#' pitagoras(3, 4)
#' pitagoras(a = c(3, 5), b = c(4, 12))
pitagoras <- function(a, b) {
    if (any(a <= 0) || any(b <= 0)) {
        stop("os catetos devem ser positivos")
    }
    sqrt(a^2 + b^2)
}
