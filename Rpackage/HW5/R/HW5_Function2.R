#' Function 2: Your input for this function should be an individual year.
#' Your output should be the oldest player in the NBA data for that year
#' @examples
#' oldest_player_year()

oldest_player_year<- function(dataset,n){

  a<-subset(dataset,dataset$Year==n)
  a<-a[,c(1,2,4)]
  a<-a[a$Age == max(a$Age),]
  a[1,]

}


