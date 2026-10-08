# Hipotenusa de um triângulo retângulo

Dados os catetos de um triângulo retângulo, calcula a hipotenusa pelo
teorema de Pitágoras.

## Usage

``` r
pitagoras(a, b)
```

## Arguments

- a, b:

  Vetores numéricos com os catetos, todos positivos.

## Value

Um vetor numérico com as hipotenusas.

## Details

A hipotenusa é \\h = \sqrt{a^2 + b^2}\\. Os dois vetores seguem a regra
de reciclagem usual do R.

## Examples

``` r
pitagoras(3, 4)
#> [1] 5
pitagoras(a = c(3, 5), b = c(4, 12))
#> [1]  5 13
```
