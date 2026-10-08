# Hipotenusa de um triângulo retângulo

Dados os catetos de um triângulo retângulo, calcula a hipotenusa pelo
teorema de Pitágoras.

## Uso

``` r
pitagoras(a, b)
```

## Argumentos

- a, b:

  Vetores numéricos com os catetos, todos positivos.

## Valor

Um vetor numérico com as hipotenusas.

## Detalhes

A hipotenusa é \\h = \sqrt{a^2 + b^2}\\. Os dois vetores seguem a regra
de reciclagem usual do R.

## Exemplos

``` r
pitagoras(3, 4)
#> [1] 5
pitagoras(a = c(3, 5), b = c(4, 12))
#> [1]  5 13
```
