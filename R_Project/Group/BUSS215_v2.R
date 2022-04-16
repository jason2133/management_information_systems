#step 0
adm <- read.csv('C:/Users/jason/¹ÙÅÁ È­¸é/coding1/management_information_systems/R_Project/Group/admission.csv')
head(adm)

#step 1
gre_rank<-ifelse(adm$gre<=300,"NQ",ifelse(adm$gre>550,ifelse(adm$gre>700,"High","Mid"),"Low"))
gpa_rank<-ifelse(adm$gpa<=2.0,"NQ",ifelse(adm$gpa>3.0,ifelse(adm$gpa>3.5,"High","Mid"),"Low"))
sch_rank<-ifelse(adm$rank==4,"NQ",ifelse(adm$rank==3,"Low",ifelse(adm$rank==2,"Mid","High")))             
adm<-cbind(adm, data.frame(GRE_Rank=gre_rank,GPA_Rank=gpa_rank,SCH_Rank=sch_rank))
head(adm)

#step 2
#Q1
nrow(adm[adm$GPA_Rank=="Mid", ])
#Q2
nrow(adm[adm$SCH_Rank=="Low", ])
#Q3
mean(adm[adm$SCH_Rank!="NQ", "gre"])

#step 3
adm<-cbind(adm, data.frame(Overall_Score=overall_score))
head(adm)

#step 4
# Q4  
numerator1<-nrow(adm[adm$admit==0, ])
denominator1<-nrow(adm)
numerator1/denominator1

# Q5
1-(numerator1/denominator1)

# Q6
numerator2<-nrow(adm[adm$admit==0 & adm$GRE_Rank=="NQ", ])
denominator2<-nrow(adm[adm$GRE_Rank=="NQ", ])
numerator2/denominator2

# Q7
numerator3<-nrow(adm[adm$admit==1 & adm$GPA_Rank!="High", ])
numerator3
denominator3<-nrow(adm[adm$GPA_Rank!="High", ])
denominator3
numerator3/denominator3

# Q8
numerator4<-nrow(adm[adm$admit==0 & adm$SCH_Rank=="Low", ])
denominator4<-nrow(adm[adm$SCH_Rank=="Low", ])
numerator4/denominator4

