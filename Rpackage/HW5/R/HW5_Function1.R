#' Function 1: Your input for this function should be an individual year.
#' Your output would be the top 10 scored players in that year.
#' @examples
#' top_10_player_pts()

top_10_player_pts <- function(dataset,n){

  a<-subset(dataset,dataset$Year==n)
  a<-a[,c(1,2,52)]
  a<-a[order(-a$PTS),]
  a[1:10,]
}

