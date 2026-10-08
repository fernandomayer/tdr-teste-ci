# meupacote

O `meupacote` reúne funções para operações aritméticas e geométricas
simples, para sortear delineamentos experimentais e para o teste t de
uma média, além de um conjunto de dados de densidade do solo.

## Instalação

A versão em desenvolvimento pode ser instalada a partir do GitHub:

``` r

# install.packages("pak")
pak::pak("fernandomayer/tdr-teste-ci")
```

## Exemplo

``` r

library(meupacote)
pitagoras(3, 4)
#> [1] 5
teste_t(dens_solo$dens, mu0 = 1.3)
#> Teste t para a média de uma população
#> H0: média = 1.3, n = 10
#> t = -1.133, p-valor = 0.2866
```
