library(readxl)
library(xlsx)
library(rjson)
library(plyr)
library(XML)
library(kulife)
library(readxl)
library(writexl)

setwd("~/_Irain/College/Data Wrangling/files/part-1")

# Exercise 1
csv_file <- read.csv("data.csv", header = TRUE)
csv_file

# Exercise 2
txt_file <- read.table("data.txt")
txt_file
library(readxl)

# Exercise 3
xls_file <- read_excel("data.xls", sheet = 1)
xls_file

# Exercise 4
xlsx_file <- read_excel("data.xlsx", sheet = 1)
xlsx_file

library(rjson)

# Exercise 5
json_file <- fromJSON(file="data.json")
json_file
json_file <- as.data.frame(json_file)


library("plyr")
# Exercise 6
xml_file <- ldply(xmlToList("data.xml"), data.frame)
xml_file

library(XML)


setwd("~/_Irain/College/Data Wrangling/files/ExportedFiles")
# Exercise 7
write.csv(csv_file, file = "data.csv")
write.table(txt_file, file = "data.txt", sep="\t")

# Exercise 8
write.xlsx(xls_file, "data.xls")
write.xlsx(xlsx_file, "data.xlsx")

# Exercise 9
data_json <- toJSON(json_file)
write(data_json, "data.json")

# Exercise 10
write.xml(xml_file, file="data.xml")