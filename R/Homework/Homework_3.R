## 7.3.4 Exercícios
# 1. Crie 5 novas colunas de gêneros na base imdb, cada uma com um dos gêneros contidos na coluna generos. Para os filmes com menos de 5 gêneros, substitua os valores NA pela string “inexistente”.

# 2. Substitua os “????” no código abaixo para criar uma tabela do lucro médio dos filmes ao longo dos anos de 2000 a 2016, com cada ano sendo uma coluna da base.

imdb |>
  mutate(lucro = receita - orcamento) |>
  filter(ano %in% "????") |>
  group_by("????") |>
  summarise(lucro_medio = "????") |>
  pivot_wider(names_from = "????", values_from = "????")
