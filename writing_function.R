library(palmerpenguins)
library(tidyverse)


df_info <- function(df_obj) {
  rows<- nrow(df_obj)
  colss <- ncol(df_obj)
  names_cols <- names(df_obj)
   tot_NAs <- NULL
   type_cols <- NULL
   
   for (i in c(1:length(names_cols))) {
     type_cols[i] <- class(df_obj[,i][[1]])
     tot_NAs[i] <- sum(is.na(df_obj[,i][[1]]))
   }
  
  message(paste("Number of Rows:", rows))
  message(paste("Number of Cols:", colss))
 
  tibble(
    `Column Names` = names_cols,
    `Class of column` = type_cols,
    `Total NAs` = tot_NAs
  )
}

df_info(penguins)

