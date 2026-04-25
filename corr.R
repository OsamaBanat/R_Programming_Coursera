corr <- function(directory, threshold = 0) {
   files <- list.files(directory, full.names = TRUE)
   files <- sort(files)
   result <- c()
   for (i in files) {
      data <- read.csv(i)
      n_complete <- sum(complete.cases(data))
      if (n_complete > threshold) {
         cc <- data[complete.cases(data), ]		##comma
         result <- c(result, cor(cc$sulfate, cc$nitrate))
      }
   }
   return(result)
}
