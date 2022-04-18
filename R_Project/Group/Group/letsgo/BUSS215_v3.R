##Step 0
adm<-read.csv('admission.csv')


##Step 1
gre_rank<-ifelse(adm$gre<=300,"NQ",
                 ifelse(adm$gre<=550,"Low",
                        ifelse(adm$gre<=700,"Mid","High")))
gpa_rank<-ifelse(adm$gpa<=2.0,"NQ",
                 ifelse(adm$gpa<=3.0,"Low",
                        ifelse(adm$gpa<=3.5,"Mid","High")))
sch_rank<-ifelse(adm$rank==4,"NQ",
                 ifelse(adm$rank==3,"Low",
                        ifelse(adm$rank==2,"Mid","High")))

adm<-cbind(adm,data.frame("GRE_Rank"=gre_rank,"GPA_Rank"=gpa_rank, "SCH_Rank"=sch_rank))
head(adm)


##Step 2
nrow(adm[adm$"GPA_Rank"=="Mid", ])      ##Q1 ans. 173
nrow(adm[adm$"SCH_Rank"=="Low", ])      ##Q2 ans. 121
mean(adm[adm$"SCH_Rank"!="NQ", 2])      ##Q3 ans. 591.2312


##Step3
overall_Score<-(0.5*(ifelse(adm$"GRE_Rank"=="NQ",10,
                            ifelse(adm$"GRE_Rank"=="Low",40,
                                   ifelse(adm$"GRE_Rank"=="Mid",70,100))))
                +0.3*(ifelse(adm$"GPA_Rank"=="NQ",10,
                             ifelse(adm$"GPA_Rank"=="Low",40,
                                    ifelse(adm$"GPA_Rank"=="Mid",70,100))))
                +0.2*(ifelse(adm$"SCH_Rank"=="NQ",10,
                             ifelse(adm$"SCH_Rank"=="Low",40,
                                    ifelse(adm$"SCH_Rank"=="Mid",70,100)))))
adm<-cbind(adm,data.frame("Overall_score"=overall_Score))
head(adm)


##Step4
(nrow(adm[adm$admit==0, ]))/400   #Q4 ans. 68.25%
(nrow(adm[adm$admit==1, ]))/400   #Q5 ans. 31.75%

(nrow(adm[adm$admit==0&adm$"GRE_Rank"=="NQ", ]))/(nrow(adm[adm$"GRE_Rank"=="NQ", ]))   
#Q6 ans. 0.75

(nrow(adm[adm$admit==1&adm$"GPA_Rank"!="High", ]))/(nrow(adm[adm$"GPA_Rank"!="High", ]))
#Q7 ans. 0.2459016

(nrow(adm[adm$admit==0&adm$"SCH_Rank"=="Low", ]))/(nrow(adm[adm$"SCH_Rank"=="Low", ]))  
#Q8 ans. 0.768595

(nrow(adm[adm$admit==1&adm$"Overall_score">75, ]))/(nrow(adm[adm$"Overall_score">75, ])) 
#Q9 ans. 0.4594595
(nrow(adm[adm$admit==0&adm$"Overall_score"<30, ]))/(nrow(adm[adm$"Overall_score"<30, ])) 
#Q9 ans. 1

##Step 5.
write.csv(adm, file='BUSS215_A2_G04.csv')

