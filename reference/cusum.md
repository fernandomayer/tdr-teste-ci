# Soma acumulada com reinício em zero

Calcula a estatística CUSUM unilateral superior de uma série: a soma
acumulada dos desvios acima de `k`, reiniciada em zero sempre que fica
negativa.

## Uso

``` r
cusum(x, k)
```

## Argumentos

- x:

  Vetor numérico com a série.

- k:

  Valor de referência subtraído de cada observação.

## Valor

Um vetor numérico do comprimento de `x`.

## Exemplos

``` r
cusum(c(0.2, 1.4, 0.9, -0.3, 1.8), k = 0.5)
#> [1] 0.0 0.9 1.3 0.5 1.8
```
