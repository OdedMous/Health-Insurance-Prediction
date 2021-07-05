
1+1=2
libary(ggplot2)

pie_chart <- function(column, title) {
  temp = count(column)
  ggplot(temp, aes(x="", y=freq, fill=x)) +
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0) +
  theme_void()+ # remove background, grid, numeric labels
  geom_text(aes(y = freq/length(freq) + c(0, cumsum(freq)[-length(freq)]),
                label = paste0(round(freq*100/sum(freq)), "%")), size=5)+
  guides(fill=guide_legend(title=title))
  
}







pie_chart(data$sex, "sex")
pie_chart(data$smoker, "smoker")
pie_chart(data$region, "region")


bin_chart <-function(data, column, column_name) {
  ggplot(data, aes(factor(column))) +
  geom_bar(aes(y = (..count..)/sum(..count..))) + 
  scale_y_continuous(labels=scales::percent) +
  xlab(column_name)+
  ylab("")+
  theme_minimal()+
  scale_fill_brewer(palette="Blues")+
  theme(legend.position = "none")
}

bin_chart(data, data$children, "children")
bin_chart(data, data$family_size, "family_size")

density_chart <- function(data, column, column_name) {
  ggplot(data, aes(x = column)) +
  geom_density(alpha = .2, fill="#FF6655")+
  xlab(column_name)
}

density_chart(data, data$age, "age")


density_chart <-function(data, column, column_name) {
  ggplot(data, aes(column, fill = cut(column, 100))) +
  geom_histogram(aes(y = (..count..)/sum(..count..)), show.legend = FALSE) +
  scale_y_continuous(labels=scales::percent) +
  theme_minimal() +
  labs(x = column_name, y = "") +
  scale_fill_discrete(h = c(180, 360), c = 150, l = 80)
}

density_chart(data, data$age, "age")
density_chart(data, data$bmi, "bmi")
density_chart(data, data$expenses, "expenses")

pie_chart(data$sex, "sex")
pie_chart(data$smoker, "smoker")
pie_chart(data$region, "region")


bin_chart <-function(data, column, column_name) {
  ggplot(data, aes(factor(column))) +
  geom_bar(aes(y = (..count..)/sum(..count..))) + 
  scale_y_continuous(labels=scales::percent) +
  xlab(column_name)+
  ylab("")+
  theme_minimal()+
  scale_fill_brewer(palette="Blues")+
  theme(legend.position = "none")
}

bin_chart(data, data$children, "children")
bin_chart(data, data$family_size, "family_size")

density_chart <- function(data, column, column_name) {
  ggplot(data, aes(x = column)) +
  geom_density(alpha = .2, fill="#FF6655")+
  xlab(column_name)
}

density_chart(data, data$age, "age")


density_chart <-function(data, column, column_name) {
  ggplot(data, aes(column, fill = cut(column, 100))) +
  geom_histogram(aes(y = (..count..)/sum(..count..)), show.legend = FALSE) +
  scale_y_continuous(labels=scales::percent) +
  theme_minimal() +
  labs(x = column_name, y = "") +
  scale_fill_discrete(h = c(180, 360), c = 150, l = 80)
}

density_chart(data, data$age, "age")
density_chart(data, data$bmi, "bmi")
density_chart(data, data$expenses, "expenses")pie_chart(data$sex, "sex")
pie_chart(data$smoker, "smoker")
pie_chart(data$region, "region")


bin_chart <-function(data, column, column_name) {
  ggplot(data, aes(factor(column))) +
  geom_bar(aes(y = (..count..)/sum(..count..))) + 
  scale_y_continuous(labels=scales::percent) +
  xlab(column_name)+
  ylab("")+
  theme_minimal()+
  scale_fill_brewer(palette="Blues")+
  theme(legend.position = "none")
}

bin_chart(data, data$children, "children")
bin_chart(data, data$family_size, "family_size")

density_chart <- function(data, column, column_name) {
  ggplot(data, aes(x = column)) +
  geom_density(alpha = .2, fill="#FF6655")+
  xlab(column_name)
}

density_chart(data, data$age, "age")


density_chart <-function(data, column, column_name) {
  ggplot(data, aes(column, fill = cut(column, 100))) +
  geom_histogram(aes(y = (..count..)/sum(..count..)), show.legend = FALSE) +
  scale_y_continuous(labels=scales::percent) +
  theme_minimal() +
  labs(x = column_name, y = "") +
  scale_fill_discrete(h = c(180, 360), c = 150, l = 80)
}

density_chart(data, data$age, "age")
density_chart(data, data$bmi, "bmi")
density_chart(data, data$expenses, "expenses")


pie_chart(data$sex, "sex")
pie_chart(data$smoker, "smoker")
pie_chart(data$region, "region")


bin_chart <-function(data, column, column_name) {
  ggplot(data, aes(factor(column))) +
  geom_bar(aes(y = (..count..)/sum(..count..))) + 
  scale_y_continuous(labels=scales::percent) +
  xlab(column_name)+
  ylab("")+
  theme_minimal()+
  scale_fill_brewer(palette="Blues")+
  theme(legend.position = "none")
}

bin_chart(data, data$children, "children")
bin_chart(data, data$family_size, "family_size")

density_chart <- function(data, column, column_name) {
  ggplot(data, aes(x = column)) +
  geom_density(alpha = .2, fill="#FF6655")+
  xlab(column_name)
}

density_chart(data, data$age, "age")


density_chart <-function(data, column, column_name) {
  ggplot(data, aes(column, fill = cut(column, 100))) +
  geom_histogram(aes(y = (..count..)/sum(..count..)), show.legend = FALSE) +
  scale_y_continuous(labels=scales::percent) +
  theme_minimal() +
  labs(x = column_name, y = "") +
  scale_fill_discrete(h = c(180, 360), c = 150, l = 80)
}

density_chart(data, data$age, "age")
density_chart(data, data$bmi, "bmi")
density_chart(data, data$expenses, "expenses")pie_chart(data$sex, "sex")
pie_chart(data$smoker, "smoker")
pie_chart(data$region, "region")


bin_chart <-function(data, column, column_name) {
  ggplot(data, aes(factor(column))) +
  geom_bar(aes(y = (..count..)/sum(..count..))) + 
  scale_y_continuous(labels=scales::percent) +
  xlab(column_name)+
  ylab("")+
  theme_minimal()+
  scale_fill_brewer(palette="Blues")+
  theme(legend.position = "none")
}

bin_chart(data, data$children, "children")
bin_chart(data, data$family_size, "family_size")

density_chart <- function(data, column, column_name) {
  ggplot(data, aes(x = column)) +
  geom_density(alpha = .2, fill="#FF6655")+
  xlab(column_name)
}

density_chart(data, data$age, "age")


density_chart <-function(data, column, column_name) {
  ggplot(data, aes(column, fill = cut(column, 100))) +
  geom_histogram(aes(y = (..count..)/sum(..count..)), show.legend = FALSE) +
  scale_y_continuous(labels=scales::percent) +
  theme_minimal() +
  labs(x = column_name, y = "") +
  scale_fill_discrete(h = c(180, 360), c = 150, l = 80)
}

density_chart(data, data$age, "age")
density_chart(data, data$bmi, "bmi")
density_chart(data, data$expenses, "expenses")pie_chart(data$sex, "sex")
pie_chart(data$smoker, "smoker")
pie_chart(data$region, "region")


bin_chart <-function(data, column, column_name) {
  ggplot(data, aes(factor(column))) +
  geom_bar(aes(y = (..count..)/sum(..count..))) + 
  scale_y_continuous(labels=scales::percent) +
  xlab(column_name)+
  ylab("")+
  theme_minimal()+
  scale_fill_brewer(palette="Blues")+
  theme(legend.position = "none")
}

bin_chart(data, data$children, "children")
bin_chart(data, data$family_size, "family_size")

density_chart <- function(data, column, column_name) {
  ggplot(data, aes(x = column)) +
  geom_density(alpha = .2, fill="#FF6655")+
  xlab(column_name)
}

density_chart(data, data$age, "age")


density_chart <-function(data, column, column_name) {
  ggplot(data, aes(column, fill = cut(column, 100))) +
  geom_histogram(aes(y = (..count..)/sum(..count..)), show.legend = FALSE) +
  scale_y_continuous(labels=scales::percent) +
  theme_minimal() +
  labs(x = column_name, y = "") +
  scale_fill_discrete(h = c(180, 360), c = 150, l = 80)
}

density_chart(data, data$age, "age")
density_chart(data, data$bmi, "bmi")
density_chart(data, data$expenses, "expenses")pie_chart(data$sex, "sex")
pie_chart(data$smoker, "smoker")
pie_chart(data$region, "region")


bin_chart <-function(data, column, column_name) {
  ggplot(data, aes(factor(column))) +
  geom_bar(aes(y = (..count..)/sum(..count..))) + 
  scale_y_continuous(labels=scales::percent) +
  xlab(column_name)+
  ylab("")+
  theme_minimal()+
  scale_fill_brewer(palette="Blues")+
  theme(legend.position = "none")
}

bin_chart(data, data$children, "children")
bin_chart(data, data$family_size, "family_size")

density_chart <- function(data, column, column_name) {
  ggplot(data, aes(x = column)) +
  geom_density(alpha = .2, fill="#FF6655")+
  xlab(column_name)
}

density_chart(data, data$age, "age")


density_chart <-function(data, column, column_name) {
  ggplot(data, aes(column, fill = cut(column, 100))) +
  geom_histogram(aes(y = (..count..)/sum(..count..)), show.legend = FALSE) +
  scale_y_continuous(labels=scales::percent) +
  theme_minimal() +
  labs(x = column_name, y = "") +
  scale_fill_discrete(h = c(180, 360), c = 150, l = 80)
}

density_chart(data, data$age, "age")
density_chart(data, data$bmi, "bmi")
density_chart(data, data$expenses, "expenses")pie_chart(data$sex, "sex")
pie_chart(data$smoker, "smoker")
pie_chart(data$region, "region")


bin_chart <-function(data, column, column_name) {
  ggplot(data, aes(factor(column))) +
  geom_bar(aes(y = (..count..)/sum(..count..))) + 
  scale_y_continuous(labels=scales::percent) +
  xlab(column_name)+
  ylab("")+
  theme_minimal()+
  scale_fill_brewer(palette="Blues")+
  theme(legend.position = "none")
}

bin_chart(data, data$children, "children")
bin_chart(data, data$family_size, "family_size")

density_chart <- function(data, column, column_name) {
  ggplot(data, aes(x = column)) +
  geom_density(alpha = .2, fill="#FF6655")+
  xlab(column_name)
}

density_chart(data, data$age, "age")


density_chart <-function(data, column, column_name) {
  ggplot(data, aes(column, fill = cut(column, 100))) +
  geom_histogram(aes(y = (..count..)/sum(..count..)), show.legend = FALSE) +
  scale_y_continuous(labels=scales::percent) +
  theme_minimal() +
  labs(x = column_name, y = "") +
  scale_fill_discrete(h = c(180, 360), c = 150, l = 80)
}

density_chart(data, data$age, "age")
density_chart(data, data$bmi, "bmi")
density_chart(data, data$expenses, "expenses")pie_chart(data$sex, "sex")
pie_chart(data$smoker, "smoker")
pie_chart(data$region, "region")


bin_chart <-function(data, column, column_name) {
  ggplot(data, aes(factor(column))) +
  geom_bar(aes(y = (..count..)/sum(..count..))) + 
  scale_y_continuous(labels=scales::percent) +
  xlab(column_name)+
  ylab("")+
  theme_minimal()+
  scale_fill_brewer(palette="Blues")+
  theme(legend.position = "none")
}

bin_chart(data, data$children, "children")
bin_chart(data, data$family_size, "family_size")

density_chart <- function(data, column, column_name) {
  ggplot(data, aes(x = column)) +
  geom_density(alpha = .2, fill="#FF6655")+
  xlab(column_name)
}

density_chart(data, data$age, "age")


density_chart <-function(data, column, column_name) {
  ggplot(data, aes(column, fill = cut(column, 100))) +
  geom_histogram(aes(y = (..count..)/sum(..count..)), show.legend = FALSE) +
  scale_y_continuous(labels=scales::percent) +
  theme_minimal() +
  labs(x = column_name, y = "") +
  scale_fill_discrete(h = c(180, 360), c = 150, l = 80)
}

density_chart(data, data$age, "age")
density_chart(data, data$bmi, "bmi")
density_chart(data, data$expenses, "expenses")























































