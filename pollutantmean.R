pollutantmean <- function(directory, pollutant, id = 1:332){
   all_data <- c()
   for (i in id){
      file_name <- sprintf("%03d.csv", i)
      file_path <- file.path (directory, file_name)
      df <- read.csv(file_path)
      all_data <- c(all_data, df [[pollutant]])
   }
   mean (all_data, na.rm = TRUE)
}

