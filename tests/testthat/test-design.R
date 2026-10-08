test_that("design() devolve uma linha por parcela", {
    expect_equal(nrow(design(k = 4, n = 3, des = "dic")), 12)
    expect_equal(nrow(design(k = 4, n = 3, des = "dbc")), 12)
})

test_that("no DIC, cada tratamento aparece n vezes", {
    d <- design(k = 4, n = 3, des = "dic")
    expect_equal(as.vector(table(d$trt)), rep(3, 4))
})

test_that("no DBC, cada bloco recebe cada tratamento uma vez", {
    balanceado <- replicate(50, {
        d <- design(k = 4, n = 3, des = "dbc")
        all(table(d$bloco, d$trt) == 1)
    })
    expect_equal(sum(!balanceado), 0)
})
