#' Teste t para a média de uma população
#'
#' Calcula a estatística e o p-valor do teste t bilateral para a média de
#' uma população, a partir de uma amostra aleatória simples.
#'
#' @param x Vetor numérico com a amostra.
#' @param mu0 Média da população sob a hipótese nula.
#'
#' @returns Um objeto da classe `teste_t`: uma lista com o tamanho, a
#'     média e o desvio-padrão da amostra, a média sob a hipótese nula, a
#'     estatística e o p-valor do teste.
#'
#' @export
#'
#' @examples
#' set.seed(2026)
#' x <- rnorm(15, mean = 1)
#' teste_t(x, mu0 = 0)
teste_t <- function(x, mu0) {
    n <- length(x)
    media <- mean(x)
    dp <- stats::sd(x)
    estat <- (media - mu0) / (dp / sqrt(n))
    pvalor <- 2 * stats::pt(abs(estat), df = n - 1, lower.tail = FALSE)
    res <- list(n = n, media = media, dp = dp, mu0 = mu0,
                estat = estat, pvalor = pvalor)
    class(res) <- "teste_t"
    res
}

#' @export
print.teste_t <- function(x, ...) {
    linhas <- c(
        "Teste t para a m\u00e9dia de uma popula\u00e7\u00e3o",
        paste0("H0: m\u00e9dia = ", x$mu0, ", n = ", x$n),
        paste0("t = ", format(x$estat, digits = 4),
               ", p-valor = ", format(x$pvalor, digits = 4))
    )
    writeLines(linhas)
    invisible(x)
}
