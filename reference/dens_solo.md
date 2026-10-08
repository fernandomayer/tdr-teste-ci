# Densidade do solo ao longo do perfil em zonas de compactação

Valores de densidade do solo em amostras retiradas a diferentes
profundidades do perfil, em um estudo sobre zonas de compactação.

## Uso

``` r
dens_solo
```

## Formato

Um `data.frame` com 10 linhas e 2 colunas:

- prof:

  Profundidade do perfil de onde a amostra foi retirada (cm).

- dens:

  Densidade do solo na amostra (g cm\\^{-3}\\).

## Fonte

COSTA, J. R. *Técnicas experimentais aplicadas às ciências agrárias*.
Seropédica: Embrapa Agrobiologia, 2003 (Documentos, 163). Exemplo
5.7.2.1, p. 90.

## Exemplos

``` r
str(dens_solo)
#> 'data.frame':    10 obs. of  2 variables:
#>  $ prof: num  10 15 20 25 30 35 40 45 50 55
#>  $ dens: num  1.39 1.43 1.39 1.34 1.26 ...
meuxy(dens ~ prof, data = dens_solo)
```
