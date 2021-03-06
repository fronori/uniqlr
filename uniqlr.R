require(tidyverse)

# Returns the specified column length and unique number of elements in the column 
# of data frame/tibble by a pipe-able fashion.
uniqro <- function(.dat = starwars, target = "species"){
  n1 <- .dat %>% 
    # pull(target) %>% 
    NROW()
  n2 <- .dat %>% 
    pull(target) %>% 
    n_distinct()
  message("NROW and unique row length: ")
  c(n1, n2)
}

# Returns unique elements of the specified column 
# in data frame/tibble by a pipe-able fashion.
uniqle <- function(.dat = starwars, target = "eye_color"){
  target <- .dat %>% 
    pull(target)
  if(is.factor(target)){
    message("unique levels: ")
    levels(target)
  }else{
    message("unique elements: ")
    unique(target)
  }
}

# Use cases: 
uniqro(starwars, "species")
uniqle(starwars, "eye_color")

# Also these functions are pipe (i.e., %>%) friendly!
starwars %>% 
  uniqro("species")

starwars %>% 
  uniqle("eye_color")
