df<-read.csv("C:/Users/ASUS/Documents/New folder/Toy_sales.csv")
view(df)
str(df)
#simple linear regression(predic unitsales as a function of price)
plot(df$Price,df$Unitsales)
slr_model<-lm(formula=Unitsales~Price,data=df)
slr_model
#equation of regression line: Unitsales= -4914*Price+11412
#Interpretation : If price is increased by 1unit, then the unitsales decreases by 4914 units on an average

#model evaluation
summary(slr_model)
abline(a=114215,b=-4914,col='red')

#multiple linear regression model
mlr_model<-lm(formula=Unitsales~Month+Price+Adexp+Promexp,data=df)
mlr_model       
summary(mlr_model)

#model improvement by dropping insignificant variable
mlr_model2<-lm(Unitsales~Price+Adexp+Promexp,df)
mlr_model2
summary(mlr_model2)
P<-data.frame("Price"=5,"Adexp"=52.16,"Promexp"=61.43)
predict(mlr_model2,P)
