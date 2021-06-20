getwd()
setwd("C:\\Users\\dolid\\OneDrive\\Desktop\\kmpg")
getwd()
cusDemo  <- read.csv("Customers Demographic.csv",na.strings = c(""))
cusDemo
head(cusDemo)
str(cusDemo)
nrow(cusDemo)
cusDemo[!complete.cases(cusDemo),]
#finding na in the customer id
cusDemo[is.na(cusDemo$last_name),"last_name"]
cusDemo[is.na(cusDemo$last_name),"last_name"] <- "unknown"

#check
nrow(cusDemo[is.na(cusDemo$last_name),"last_name"])
cusDemo[c(1905,1935),]

#finding na in gender
cusDemo[!complete.cases(cusDemo$gender),"gender"]


#finding na in past 3 years bike related purchase
cusDemo[!complete.cases(cusDemo$past_3_years_bike_related_purchases),"past_3_years_bike_related_purchases"]

# finding na in dob
cusDemo[!complete.cases(cusDemo$DOB),]
 #there are many DOB are empty we could find the DOB from other details like the registered phone number 
#contacting telecom services
 #credit card details if the person had performed any transactions
 #no way possible for getting in this so converted the dob to a measure values age
 #age is divided into four categories
  #19-35years
  #36-60years
  # 60-91 'retired'
  # rest all "none" mostly 0 missing DOB


#finding na in level 
cusDemo[!complete.cases(cusDemo$level),]


#finding na in job title

cusDemo[cusDemo$job_industry_category=="IT",]
#this is not important at now

#finding in job title
cusDemo[is.na(cusDemo$job_industry_category),]
# you will find that 0 rows are return 
#the underlying is the data set already had the missing data with 'n/a' 
#this would return you the misssing data in job industry

cusDemo[cusDemo$job_industry_category=="n/a","job_industry_category"] <- "unknown"

#
cusDemo[!complete.cases(cusDemo),]

#finding na in wealth

cusDemo[!complete.cases(cusDemo$wealth_segment),]

#finding na in decreased indicator
cusDemo[!complete.cases(cusDemo$deceased_indicator),]
#owns cars
cusDemo[!complete.cases(cusDemo$owns_car),]
#tenure
cusDemo[!complete.cases(cusDemo$tenure_),]



 med_tenure_it<- as.integer(median(cusDemo[cusDemo$job_industry_category=="IT","tenure_"],na.rm=TRUE))
med_tenure_it
cusDemo[is.na(cusDemo$tenure_) & cusDemo$job_industry_category=="IT","tenure_"]<-med_tenure_it


med_tenure_fn<-median(cusDemo[cusDemo$job_industry_category=="Financial Services","tenure_"],na.rm=TRUE)
med_tenure_fn
cusDemo[is.na(cusDemo$tenure_) & cusDemo$job_industry_category=="Financial Services","tenure_"]<-med_tenure_fn



med_tenure_h<- median(cusDemo[cusDemo$job_industry_category=="Health","tenure_"],na.rm=TRUE)
med_tenure_h
cusDemo[is.na(cusDemo$tenure_) & cusDemo$job_industry_category=="Health","tenure_"]<-med_tenure_h



med_tenure_m<- median(cusDemo[cusDemo$job_industry_category=="Manufacturing","tenure_"],na.rm=TRUE)
med_tenure_m
cusDemo[is.na(cusDemo$tenure_) & cusDemo$job_industry_category=="Manufacturing","tenure_"]<-med_tenure_m








#missing values are handled 
#we need to drop DOB,age

cusDemo$DOB <- NULL
cusDemo$Age <- NULL
head(cusDemo)





#exporting it as csv file to use
write.csv(cusDemo,"C:\\Users\\dolid\\OneDrive\\Desktop\\kmpg\\customersdemographic.csv",row.names = TRUE)






