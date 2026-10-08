# Sorteio de delineamentos experimentais

Sorteia os tratamentos às parcelas de um delineamento inteiramente
casualizado (DIC) ou de blocos casualizados (DBC).

## Usage

``` r
design(k, n, des = c("dic", "dbc"))
```

## Arguments

- k:

  Número de tratamentos.

- n:

  Número de repetições, no DIC, ou de blocos, no DBC.

- des:

  Delineamento: `"dic"` ou `"dbc"`.

## Value

Um `data.frame` com uma linha por parcela.

## Examples

``` r
design(k = 3, n = 2, des = "dic")
#>   parcela trt
#> 1       1   2
#> 2       2   1
#> 3       3   3
#> 4       4   1
#> 5       5   2
#> 6       6   3
design(k = 3, n = 2, des = "dbc")
#>   parcela bloco trt
#> 1       1     1   3
#> 2       2     1   1
#> 3       3     1   2
#> 4       4     2   2
#> 5       5     2   1
#> 6       6     2   3
```
