---
title: "Strings and Regex"
format: html
editor: visual
editor_options: 
  chunk_output_type: console
---

```{r}
library(readr)
library(stringr)
```

```{r}

# Read lines from the first file
lines_randomletters <- readr::read_lines("https://byuistats.github.io/M335/data/randomletters.txt")

# Read lines from the second file
lines_randomletters_wnumbers <- readr::read_lines("https://byuistats.github.io/M335/data/randomletters_wnumbers.txt")
```

```{r}
# Extract every 1700th letter
hidden_quote <- lines_randomletters[seq(1, length(text), by = 1700)]

# Combine the extracted letters to reveal the hidden quote
hidden_quote <- paste(hidden_quote, collapse = "")

# Find the index of the period (end of the quote)
period_index <- regexpr("\\.", hidden_quote)

# Extract the quote
final_quote <- substr(hidden_quote, 1, period_index)

# Print the hidden quote
cat("Hidden Quote:", final_quote, "\n")
```

```{r}
decode <- function(number) {
  return(letters[as.numeric(number)])
}
```

```{r}
all_text <- str_c(lines_randomletters_wnumbers, collapse = "")

numbers <- str_extract_all(all_text, "\\d+")
decoded_message <- sapply(numbers[[1]], decode) 
decoded_message_text <- str_c(decoded_message, collapse = "")
print(decoded_message_text)
```

```{r}
# Remove spaces and periods
cleaned_text <- gsub("[[:space:].]", "", lines_randomletters)

# Find all sequences of vowels
vowel_sequences <- str_extract_all(cleaned_text, "[aeiou]+")

# Unlist the vowel sequences
all_vowel_sequences <- unlist(vowel_sequences)

# Identify the longest sequence
longest_sequence <- all_vowel_sequences[which.max(nchar(all_vowel_sequences))]

# Print the longest sequence of vowels
cat("Longest Sequence of Vowels:", longest_sequence, "\n")
```
