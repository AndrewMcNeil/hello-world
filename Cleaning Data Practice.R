# Demographic Statistics by Zip Code

## Importing .csv file as tbl_df
dem <- read_csv("desktop/Data Sets/demographic.csv")
class(dem) #tbl_df
head(dem)
str(dem) 
any(is.na(dem)) #No NAs

## Change first column class to factor and rest to numeric
dem$`JURISDICTION NAME` <- as.factor(dem$`JURISDICTION NAME`)
dem[, 2:ncol(dem)] <- lapply(dem[, 2:ncol(dem)], as.numeric)
str(dem) #Column classes successfully changed

## Remove Percent Columns
count_subset <- str_detect(names(dem), "COUNT")
dem2 <- dem[, count_subset]
names(dem2)


