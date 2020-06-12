getwd()
gross_growth <- read.csv(file="Section6-Homework-Data.csv")
str(gross_growth)
colnames(gross_growth)
ggplot(data=gross_growth, aes(x=Genre, y=))
colnames(gross_growth) <- c("DayWeek","Director","Genre","MovieTitle","ReleaseDate","Studio",
                            "AdjustedGrossMillions","BudgetMillions","GrossMillions","ImdbRating",
                            "MovielensRating","OversearMillions","Overseas","ProfitMillions","Profit",
                            "RuntimeMins","UsMillions","GrossUS")

k <- ggplot(data=gross_growth, aes(x=Genre, y=GrossUS, size=BudgetMillions, colour=Studio))
k  + geom_point()

gross_growth[gross_growth$]
ggplot(data=gross_growth, aes(x=DayWeek)) + geom_bar()
