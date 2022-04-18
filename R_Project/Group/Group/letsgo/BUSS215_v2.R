#step 0
adm<-read.csv('admission.csv')
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
gre_r<-ifelse(adm$GRE_Rank=="NQ", 10, ifelse(adm$GRE_Rank=="Low", 40, ifelse(adm$GRE_Rank=="Mid",70,100)))
gpa_r<-ifelse(adm$GPA_Rank=="NQ", 10, ifelse(adm$GPA_Rank=="Low", 40, ifelse(adm$GPA_Rank=="Mid",70,100)))
sch_r<-ifelse(adm$SCH_Rank=="NQ", 10, ifelse(adm$SCH_Rank=="Low", 40, ifelse(adm$SCH_Rank=="Mid",70,100)))
overall_score<-gre_r*0.5+gpa_r*0.3+sch_r*0.2
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
denominator3<-nrow(adm[adm$GPA_Rank!="High", ])
numerator3/denominator3

# Q8
numerator4<-nrow(adm[adm$admit==0 & adm$SCH_Rank=="Low", ])
denominator4<-nrow(adm[adm$SCH_Rank=="Low", ])
numerator4/denominator4

# Q9
numerator5<-nrow(adm[adm$admit==1 & adm$Overall_Score>75, ])
denominator5<-nrow(adm[adm$Overall_Score>75, ])
numerator5/denominator5

# Q10
numerator6<-nrow(adm[adm$admit==0 & adm$Overall_Score<30, ])
denominator6<-nrow(adm[adm$Overall_Score<30, ])
numerator6/denominator6

#step 5
write.csv(adm, file="BUS215_adm_G04.csv", row.names=FALSE)
