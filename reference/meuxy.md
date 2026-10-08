# Gráfico de dispersão personalizado

Faz um gráfico de dispersão com o pacote lattice, com símbolo e cor
fixos.

## Usage

``` r
meuxy(x, ...)
```

## Arguments

- x:

  Uma fórmula do tipo `y ~ x`.

- ...:

  Outros argumentos passados para
  [`lattice::xyplot()`](https://rdrr.io/pkg/lattice/man/xyplot.html).

## Value

Um objeto da classe `trellis`, desenhado ao ser impresso.

## Examples

``` r
meuxy(dist ~ speed, data = cars)
```
