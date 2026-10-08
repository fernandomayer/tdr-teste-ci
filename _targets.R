## Pipeline de exemplo do Capítulo 6. Rode de dentro de projetos/ozonio/,
## que é a raiz deste projeto:
##
##     targets::tar_make()
##
## O relatório exige o pacote tarchetypes; sem ele, comente a última linha
## da lista de alvos.

library(targets)
library(tarchetypes)

tar_source("R")

list(
  tar_target(arquivo, "dados/airquality.csv", format = "file"),
  tar_target(dados, ler_dados(arquivo)),
  tar_target(medias, medias_mensais(dados)),
  tar_target(modelo, ajustar_modelo(dados)),
  tar_target(figura, salvar_figura(dados, modelo), format = "file"),
  tar_quarto(relatorio, "relatorio.qmd")
)
