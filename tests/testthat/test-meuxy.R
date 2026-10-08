test_that("meuxy() devolve um gráfico do lattice", {
    expect_s3_class(meuxy(dist ~ speed, data = cars), "trellis")
})
