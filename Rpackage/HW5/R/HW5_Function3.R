
#' Function 3: Your input for this function should be an individual year.
#' Your output should be the correlation matrix for all numeric variables in the data for that year.
#' @examples
#' cor_matrix()

cor_matrix <- function(dataset,n){
  year_nba<-subset(dataset,dataset$Year==n)
  numeric <- purrr::keep(year_nba,is.numeric)
  numeric<-na.omit(numeric)
  M<-cor(numeric)
  head(round(M,2))
  corrplot::corrplot(M, method="circle")
}
