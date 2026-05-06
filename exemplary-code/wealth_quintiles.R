wealth_quintiles <- function(data, var, grouping = NULL) {
  
  require(dplyr)
  require(knitr)
  
  result <- data %>%
    mutate(
      quintile = ntile({{ var }}, 5),
      quintile = factor(
        quintile,
        levels = 1:5,
        labels = c(
          "Q1 — Bottom 20%",
          "Q2 — Lower-middle 20%",
          "Q3 — Middle 20%",
          "Q4 — Upper-middle 20%",
          "Q5 — Top 20%"
        )
      )
    )
  
  result %>%
    group_by(quintile, {{ grouping }}) %>%
    summarize(
      N           = n(),
      Mean        = mean({{ var }}, na.rm = TRUE),
      `Share (%)` = n() / nrow(data) * 100,
      .groups     = "drop"
    ) %>%
    kable(
      digits  = 1L,
      caption = rlang::englue("Wealth Quintile Distribution of {{var}}")
    )
}