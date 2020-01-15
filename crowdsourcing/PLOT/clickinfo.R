### Get click info
###
### Ellyn Butler
### January 14, 2020

df <- read.csv("info.csv")

df$numclicks <- abs((df$redstartangle - df$bluestartangle)/df$blueanglechange)
df$diff <- df$redstartangle - df$bluestartangle
df$button <- sign((df$redstartangle - df$bluestartangle)/df$blueanglechange)
df[df$button == -1, "button"] <- "counterclockwise"
df[df$button == 1, "button"] <- "clockwise"
