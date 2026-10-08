test_that("pitagoras() calcula a hipotenusa", {
    expect_equal(pitagoras(3, 4), 5)
    expect_equal(pitagoras(c(3, 5), c(4, 12)), c(5, 13))
})

test_that("pitagoras() recusa catetos que não são positivos", {
    expect_error(pitagoras(-3, 4), "positivos")
    expect_error(pitagoras(3, 0), "positivos")
})
