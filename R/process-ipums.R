
library(arrow)
library(dplyr)
library(ipumsr)
 
e1920 <- define_extract_micro(
  collection = "usa",
  description = "census data for 1920",
  samples = "us1920c",
  variables = list(
    "STATEFIP", "COUNTYICP", "OCC1950", "HISPAN", "MARST", "BPL", "RACE", 
    "FARM", "GQTYPE", "NCHILD", "LIT", "OWNERSHP", "CLASSWKR", "URBAN", 
    "IND1950", "NFAMS",
    var_spec("AGE", case_selections = as.character(25:55)),
    var_spec("SEX", case_selections = "1"),
    var_spec("LABFORCE", attached_characteristics = "spouse")
  )
)
 
e1940 <- define_extract_usa(
  collection = "usa",
  description = "census data for 1940",
  samples = c("us1940b"),
  variables = list("EDUC", "INCWAGE")
)