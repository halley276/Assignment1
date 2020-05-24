setwd("/Users/josephine-koay/Desktop/R_prog_JHU")

complete <- function(directory,id=1:332){
        files <- list.files(directory,full.names=TRUE)
        m <- data.frame(matrix(0, ncol = 2, nrow = length(id)))
        names(m)<-c("id","nobs")
        m[,1]<-id
        for (i in 1:length(id)){
                #get file for that monitor, then subset the pollutant
                df<- read.csv(files[id[i]]) 
                cc <- df[complete.cases(df),]
                #calc mean for one monitor, and assign to corresponding indice of m1
                m[i,2] <-nrow(cc)
        }
        m
}