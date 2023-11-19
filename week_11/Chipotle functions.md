---
title: "W11: Chipotle"
execute:
  keep-md: true
  df-print: paged
  warning: false
  echo: false
format:
  html:
    code-fold: true
    code-line-numbers: true
    fig-width: 10
date: "November 18, 2023"
editor_options: 
  chunk_output_type: console
---


::: {.cell}

:::

::: {.cell}

:::

::: {.cell}

:::

::: {.cell}
::: {.cell-output .cell-output-stdout}
```
# A tibble: 7 × 2
  day       visits
  <chr>      <int>
1 Monday        94
2 Tuesday       76
3 Wednesday     89
4 Thursday     106
5 Friday       130
6 Saturday     128
7 Sunday        58
```
:::

::: {.cell-output .cell-output-stdout}
```
[1] "Friday"
```
:::
:::

::: {.cell}
::: {.cell-output .cell-output-stdout}
```
# A tibble: 7 × 2
  day       visits
  <chr>      <int>
1 Monday        18
2 Tuesday       16
3 Wednesday     14
4 Thursday      27
5 Friday        26
6 Saturday      36
7 Sunday        20
```
:::

::: {.cell-output .cell-output-stdout}
```
[1] "Saturday"
```
:::
:::

::: {.cell}
::: {.cell-output .cell-output-stdout}
```
# A tibble: 7 × 2
  day       visits
  <chr>      <int>
1 Monday         0
2 Tuesday        0
3 Wednesday      1
4 Thursday       0
5 Friday         0
6 Saturday       1
7 Sunday         0
```
:::

::: {.cell-output .cell-output-stdout}
```
[1] "Wednesday, Saturday"
```
:::
:::
