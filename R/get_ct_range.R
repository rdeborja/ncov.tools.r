get_ct_range <- function(x, lower=0, upper=100, increment=10) {
  counter = lower
  if (is.null(x)) {
    return (-1)
  } else if (!is.numeric(x) | x == '' | is.na(x)) {
    return(-1)
  }
  while(counter <= upper) {
    current_upper = counter + increment - 1
    if (x >= lower & x <= current_upper) {
      return(paste(sep="-", counter, current_upper))
    }
    counter <- counter + increment
  }
}

