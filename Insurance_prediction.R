#' ---
#' title: "Prediction of Health Insurance Costs with Linear Regression"
#' output:
#'   html_document: default
#'   pdf_document: default
#' ---
#' 


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































































