# Gráfico de dispersão personalizado

Faz um gráfico de dispersão com o pacote lattice, com símbolo e cor
fixos.

## Uso

``` r
meuxy(x, ...)
```

## Argumentos

- x:

  Uma fórmula do tipo `y ~ x`.

- ...:

  Outros argumentos passados para
  [`lattice::xyplot()`](https://rdrr.io/pkg/lattice/man/xyplot.html).

## Valor

Um objeto da classe `trellis`, desenhado ao ser impresso.

## Exemplos

``` r
meuxy(dist ~ speed, data = cars)
```
