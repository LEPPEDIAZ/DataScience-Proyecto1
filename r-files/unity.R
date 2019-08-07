library(data.table)
filenames <- list.files("D:/Clases/dataScience/proyecto01", pattern="*.csv", full.names=TRUE)

data <- rbindlist(lapply(filenames,fread))

View(data)
write.csv(data,file="unity.csv",row.names = FALSE)
