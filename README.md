# uniqlr  
uniqlr is a R package with custom functions to get unique row number and unique levels from a data frame/tibble

How to use this R code: 
```
source("https://raw.githubusercontent.com/fronori/uniqlr/main/uniqlr.R")
```

So far, two functions: uniqro() and uniqle() are implemented.
- uniqro() returns the unique row number and also row number of the specified column in a data frame/tibble.
- uniqle() returns unique elements of specified column in data frame/tibble.  
Note that both functions works in a pipe-able fashion, as well as in the non-pipe manner.

# Example usages: 
```
uniqro(starwars, "species") 
```
>NROW and unique row length:  
>87 38

```
uniqle(starwars, "eye_color")
```
>unique level/character:  
>'blue' 'yellow' 'red' 'brown' 'blue-gray' 'black' 'orange' 'hazel' 'pink' 'unknown' 'red, blue' 'gold' 'green, yellow' 'white' 'dark'

# These functions are pipe friendly!
```
starwars %>%  
  uniqro("hair_color")
```
>NROW and unique row length:  
>87 13

```
starwars %>%  
  uniqle("hair_color")
```
>unique level/character:  
>'blond' NA 'none' 'brown' 'brown, grey' 'black' 'auburn, white' 'auburn, grey' 'white' 'grey' 'auburn' 'blonde' 'unknown'

# To do...
na.action is not supported, yet.  
Any other recommended functionality?
