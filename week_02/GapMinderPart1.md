---
title: "W2:GapminderI"
execute:
  keep-md: true
  df-print: paged
  warning: false
format:
  html:
    code-fold: true
    code-line-numbers: true
    fig-width: 10
date: "September 20, 2023"
---


::: {.cell}

```{.r .cell-code}
#install.packages("gapminder")
```
:::

::: {.cell}

```{.r .cell-code}
library(gapminder)
library(tidyverse)
```
:::

::: {.cell}

```{.r .cell-code}
glimpse(gapminder)
```

::: {.cell-output .cell-output-stdout}
```
Rows: 1,704
Columns: 6
$ country   <fct> "Afghanistan", "Afghanistan", "Afghanistan", "Afghanistan", …
$ continent <fct> Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asia, …
$ year      <int> 1952, 1957, 1962, 1967, 1972, 1977, 1982, 1987, 1992, 1997, …
$ lifeExp   <dbl> 28.801, 30.332, 31.997, 34.020, 36.088, 38.438, 39.854, 40.8…
$ pop       <int> 8425333, 9240934, 10267083, 11537966, 13079460, 14880372, 12…
$ gdpPercap <dbl> 779.4453, 820.8530, 853.1007, 836.1971, 739.9811, 786.1134, …
```
:::
:::

::: {.cell}

```{.r .cell-code}
gapminder <- gapminder[gapminder$country != "Kuwait", ]
```
:::

::: {.cell}

```{.r .cell-code}
gapminder <- gapminder[complete.cases(gapminder), ]
```
:::

::: {.cell}

```{.r .cell-code}
ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap, by=year, size = pop/100000)) + geom_point(aes(color=continent)) + labs(
    x = "Life Expectancy",
    y = "GDP per Capita", size = "Population(100k)"
  )+ facet_wrap(vars(year), ncol = 13)+ theme_bw()+ scale_y_continuous(trans = "sqrt")
```

::: {.cell-output-display}
![](GapMinderPart1_files/figure-html/unnamed-chunk-6-1.png){width=960}
:::
:::
