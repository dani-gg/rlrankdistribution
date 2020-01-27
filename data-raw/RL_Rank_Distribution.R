# load and process the data

Season4 <- read.csv("data-raw/RL_Rank_Distribution_Season4.csv", row.names = 1, header=T, dec=".")
Season5 <- read.csv("data-raw/RL_Rank_Distribution_Season5.csv", row.names = 1, header=T, dec=".")
Season6 <- read.csv("data-raw/RL_Rank_Distribution_Season6.csv", row.names = 1, header=T, dec=".")
Season7 <- read.csv("data-raw/RL_Rank_Distribution_Season7.csv", row.names = 1, header=T, dec=".")
Season8 <- read.csv("data-raw/RL_Rank_Distribution_Season8.csv", row.names = 1, header=T, dec=".")
Season9 <- read.csv("data-raw/RL_Rank_Distribution_Season9.csv", row.names = 1, header=T, dec=".")
Season10 <- read.csv("data-raw/RL_Rank_Distribution_Season10.csv", row.names = 1, header=T, dec=".")
Season11 <- read.csv("data-raw/RL_Rank_Distribution_Season11.csv", row.names = 1, header=T, dec=".")
Season12 <- read.csv("data-raw/RL_Rank_Distribution_Season12.csv", row.names = 1, header=T, dec=".")

usethis::use_data(Season4, Season5, Season6, Season7, Season8, Season9, Season10, Season11, Season12, overwrite = T)
