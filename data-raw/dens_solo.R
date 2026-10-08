## Densidade do solo ao longo do perfil, exemplo 5.7.2.1 de Costa (2003)
dens_solo <- readr::read_tsv("data-raw/dens_solo.txt",
                             show_col_types = FALSE) |>
    as.data.frame()

usethis::use_data(dens_solo, overwrite = TRUE)
