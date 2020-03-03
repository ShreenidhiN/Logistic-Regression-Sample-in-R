dataset<-read.csv(file.choose(),header = TRUE)

mylogit <- glm(Outcome ~ Pregnancies+Glucose + BloodPressure + SkinThickness + Insulin +BMI + Diabetes  + Age, data = dataset, family = "binomial")
print (mylogit)
summary(mylogit)
predtrain <- predict(mylogit,data = train, type = "response")
predtrain
newdata <-data.frame(Pregnancies=4,Glucose=148,BloodPressure=34,SkinThickness=25,Insulin=0,BMI=21.1,Diabetes=0.25,Age=45)
predict(mylogit,newdata)