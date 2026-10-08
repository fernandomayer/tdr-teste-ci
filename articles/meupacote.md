# Introdução ao meupacote

``` r

library(meupacote)
```

O `meupacote` traz o conjunto de dados `dens_solo`, com a densidade do
solo em dez profundidades de um perfil em zona de compactação.

``` r

str(dens_solo)
#> 'data.frame':    10 obs. of  2 variables:
#>  $ prof: num  10 15 20 25 30 35 40 45 50 55
#>  $ dens: num  1.39 1.43 1.39 1.34 1.26 ...
meuxy(dens ~ prof, data = dens_solo)
```

![](meupacote_files/figure-html/unnamed-chunk-2-1.png)

O teste t compara a densidade média do perfil com o valor de 1,3 g/cm³.

``` r

teste_t(dens_solo$dens, mu0 = 1.3)
#> Teste t para a média de uma população
#> H0: média = 1.3, n = 10
#> t = -1.133, p-valor = 0.2866
```
