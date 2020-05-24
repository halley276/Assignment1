setwd("/Users/josephine-koay/Desktop/R_prog_JHU")
#need to source complete.R as well
df_nobs<-complete("specdata")
y<-numeric()

corr<- function(directory, threshold=0){
        files <- list.files(directory,full.names=TRUE)
        for(i in 1:332){
                if (df_nobs[i,2]>threshold){
                        df<- read.csv(files[i]) 
                        cc <- df[complete.cases(df),]
                        x<-cor(cc[,2],cc[,3])
                        #This is the problematic line
                        y<-append(y,x)
                        
                }
        }
        
        y
}