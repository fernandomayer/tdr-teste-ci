# Teste t para a média de uma população

Calcula a estatística e o p-valor do teste t bilateral para a média de
uma população, a partir de uma amostra aleatória simples.

## Usage

``` r
teste_t(x, mu0)
```

## Arguments

- x:

  Vetor numérico com a amostra.

- mu0:

  Média da população sob a hipótese nula.

## Value

Um objeto da classe `teste_t`: uma lista com o tamanho, a média e o
desvio-padrão da amostra, a média sob a hipótese nula, a estatística e o
p-valor do teste.

## Examples

``` r
set.seed(2026)
x <- rnorm(15, mean = 1)
teste_t(x, mu0 = 0)
#> Teste t para a média de uma população
#> H0: média = 0, n = 15
#> t = 1.491, p-valor = 0.1581
```
