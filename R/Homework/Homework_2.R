################
## Practice
################

# a
dados::casas

## Way 1
casas |>
  group_by(geral_qualidade) |>
  summarise(across(
    .cols = c(acima_solo_area, garagem_area, venda_valor), # Variables
    .fns = mean, na.rm = T ))

## Way 2
casas |>
  group_by(geral_qualidade) |>
  summarise(
    acima_solo_area_media = mean(acima_solo_area, na.rm = TRUE),
    garagem_area_media = mean(garagem_area, na.rm = TRUE),
    valor_venda_medio = mean(venda_valor, na.rm = TRUE)
  )


# b)

# way 1

casas|>
      summarise(across
                (.col= (where(c(porao_qualidade, varanda_fechada_area, cerca_qualidade),
                 ~!is.na(.x)))))

# way 2

casas |>
  filter_at(
    vars(porao_qualidade, varanda_fechada_area, cerca_qualidade),
    ~!is.na(.x)
  )


# c

# Way 1
casas |>
  summarise(across(where(is.character)), ~tidyr::replace_na(.x, replace = "Não possui"))


# Way 2
casas |>
  mutate_if(is.character, ~tidyr::replace_na(.x, replace = "Não possui"))
