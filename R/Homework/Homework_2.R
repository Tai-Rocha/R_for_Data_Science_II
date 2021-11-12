################################################################################
## Practice: Rewrite Way 1 codes with across() e where functions of dplyR pckgs
## across()
## where() is for test, usually with "is"
## R version 4.1.2
## Use " Enter" all times you open a parathesis
################################################################################

library(dplyr)

casas <- readRDS("data/casas.rds")

# a

  ## Way 1

  casas |>
  group_by(geral_qualidade) |>
  summarise(
    acima_solo_area_media = mean(acima_solo_area, na.rm = TRUE),
    garagem_area_media = mean(garagem_area, na.rm = TRUE),
    valor_venda_medio = mean(venda_valor, na.rm = TRUE)
  )

  ## Way 2

  casas |>
  group_by(geral_qualidade) |>
  summarise(across(
    .cols = c(acima_solo_area, garagem_area, venda_valor), # Variables
    .fns = mean, na.rm = T ))


# b)

  ## Way 1
  casas |>
  filter_at(
    vars(porao_qualidade, varanda_fechada_area, cerca_qualidade),
    ~!is.na(.x)
    )


  ## Way 2

  casas|>
  summarise(across(
            .cols = c(porao_qualidade, varanda_fechada_area,   cerca_qualidade),
            .fns = ~!is.na(.x)
            )
  )

# c

  ## Way 1

  casas |>
  mutate_if(is.character, ~tidyr::replace_na(.x, replace = "Não possui"))


  ## Way 2 (not work)

  casas |>
  summarise(across(.cols = where(is.character)), .fns = ~tidyr::replace_na(.x, replace = "Não possui"))
