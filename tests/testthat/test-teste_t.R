test_that("teste_t() concorda com t.test()", {
    x <- c(5.1, 4.9, 6.2, 5.8, 6.0, 5.5, 5.3)
    r <- teste_t(x, mu0 = 5)
    ref <- t.test(x, mu = 5)
    expect_s3_class(r, "teste_t")
    expect_equal(r$estat, unname(ref$statistic))
    expect_equal(r$pvalor, ref$p.value)
})

test_that("print() mostra a estatística e o p-valor", {
    r <- teste_t(c(5.1, 4.9, 6.2, 5.8, 6.0, 5.5, 5.3), mu0 = 5)
    expect_snapshot(print(r))
})
