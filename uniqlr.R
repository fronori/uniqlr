library(tidyverse)

# Returns the specified column length and unique number of elements 
# in data frame/tibble by a pipe-able fashion.
uniqro <- function(.dat = starwars, target = "species"){
  n1 <- .dat %>% 
    # pull(target) %>% 
    NROW()
  n2 <- .dat %>% 
    pull(target) %>% 
    n_distinct()
  message("NROW and unique row length:")
  c(n1, n2)
}

# Returns unique elements of specified column 
# in data frame/tibble by a pipe-able fashion.
uniqle <- function(.dat = starwars, target = "eye_color"){
  target <- .dat %>% 
    pull(target)
  message("unique level/character: ")
  if(is.factor(target)){
    levels(target)
  }else{
    unique(target)
  }
}

# Use cases: 
uniqro(starwars, "species")
uniqle(starwars, "eye_color")

# Also these functions are pipe friendly!
starwars %>% 
  uniqro("species")

starwars %>% 
  uniqle("eye_color")