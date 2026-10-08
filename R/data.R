#' Densidade do solo ao longo do perfil em zonas de compactação
#'
#' Valores de densidade do solo em amostras retiradas a diferentes
#' profundidades do perfil, em um estudo sobre zonas de compactação.
#'
#' @format Um `data.frame` com 10 linhas e 2 colunas:
#' \describe{
#'   \item{prof}{Profundidade do perfil de onde a amostra foi retirada
#'     (cm).}
#'   \item{dens}{Densidade do solo na amostra (g cm\eqn{^{-3}}).}
#' }
#'
#' @source COSTA, J. R. *Técnicas experimentais aplicadas às ciências
#'     agrárias*. Seropédica: Embrapa Agrobiologia, 2003 (Documentos, 163).
#'     Exemplo 5.7.2.1, p. 90.
#'
#' @examples
#' str(dens_solo)
#' meuxy(dens ~ prof, data = dens_solo)
"dens_solo"
