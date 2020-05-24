setwd("/Users/josephine-koay/Desktop/R_prog_JHU")

pollutantmean <- function(directory, pollutant, id=1:332){
        files <- list.files(directory,full.names=TRUE)
        m1<- numeric()
        w1<- numeric()
        
        for (i in id){
                #get file for that monitor, then subset the pollutant
                df<- read.csv(files[i])
                pol<- df[,pollutant]
                
                #remove NAs
                realpol <- pol[!is.na(pol)]
                #calc mean for one monitor, and assign to corresponding indice of m1
                m1 <- append(m1,mean(realpol))
                w1<- append(w1,length(realpol))
        }
        weighted.mean(m1,w1)
}