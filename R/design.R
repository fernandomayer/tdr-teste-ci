dic <- function(k, n) {
    data.frame(parcela = seq_len(k * n),
               trt = sample(rep(seq_len(k), n)))
}

dbc <- function(k, n) {
    data.frame(parcela = seq_len(k * n),
               bloco = rep(seq_len(n), each = k),
               trt = c(replicate(n, sample(seq_len(k)))))
}

#' Sorteio de delineamentos experimentais
#'
#' Sorteia os tratamentos às parcelas de um delineamento inteiramente
#' casualizado (DIC) ou de blocos casualizados (DBC).
#'
#' @param k Número de tratamentos.
#' @param n Número de repetições, no DIC, ou de blocos, no DBC.
#' @param des Delineamento: `"dic"` ou `"dbc"`.
#'
#' @returns Um `data.frame` com uma linha por parcela.
#'
#' @export
#'
#' @examples
#' design(k = 3, n = 2, des = "dic")
#' design(k = 3, n = 2, des = "dbc")
design <- function(k, n, des = c("dic", "dbc")) {
    des <- match.arg(des)
    switch(des,
           dic = dic(k, n),
           dbc = dbc(k, n))
}
