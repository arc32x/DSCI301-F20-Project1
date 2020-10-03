library(tidyverse)
library(here)

path <- here("netflix_titles.csv")
netflix <- read_csv(path,
                    col_types = cols(
                      show_id = col_double(),
                      type = col_factor(), # Changed char->factor
                      title = col_character(),
                      director = col_character(),
                      cast = col_character(),
                      country = col_character(),
                      date_added = col_date(format = "%B %d, %Y"), # Changed char->date
                      release_year = col_date(format = "%Y"), # Changed dbl->date
                      rating = col_factor(), # Changed char->factor
                      duration = col_number(), # Changed char->number
                      listed_in = col_character(),
                      description = col_character()
                      )
                    )
