pollutantmean2 <- function(directory, pollutant, id = 1:332){
files <- list.files(directory, full.names = TRUE)
all_data <- c()
  	 for (i in id){
      		data <- read.csv(files[i])
      		all_data <- c(all_data, data [[pollutant]])
   	}
   	mean (all_data, na.rm = TRUE)
}

