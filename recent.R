library(tidyverse)
library(lubridate)

ufo <- read_csv("scrubbed.csv")

data <- which(year(mdy_hm(ufo$datetime))>2009)

mssp_data <- ufo[data,]

max(year(mdy_hm(mssp_data$datetime)))   

min(year(mdy_hm(mssp_data$datetime))) 
      
write_csv(x = mssp_data, 
          file = "mssp_ufo_data.csv", 
          col_names = TRUE)
      

