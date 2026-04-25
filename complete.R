complete <- function(directory, id = 1:332) {
   files <- list.files(directory, full.names = TRUE)
   files <- files[id]
   result <- data.frame(
      file = basename(files),
      nobs = integer(length(files))
   )
   for (i in seq_along(files)) {
      data <- read.csv(files[i])
      result$nobs[i] <- sum(complete.cases(data))
   }
   return(result)
}