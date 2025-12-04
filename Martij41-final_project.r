library(ggplot2)

# set WD
setwd("/courses/STA145/martij41")

# load data
library(readr)
data <- read_csv("data.csv")

# descriptive statistics
table(data$historical)
summary(data$word_count)

# SEE SECTION 3.2 of workbook

library (ggplot2)
ggplot(data, aes (x=as.factor(historical), y= word_count, fill = word_count)) +
  geom_boxplot()+
  labs(
    title = "word count compared with historical data",
    x = "historical",
    y = "word_count"
    )+
    theme_minimal() +
      theme(legend.position = "none")

# Perform ANOVA
anova <- aov(word_count ~ historical, data = data)
# Summarize ANOVA results
summary(anova)

# total
# get R2
# between/total
# OR between/(between+within)




