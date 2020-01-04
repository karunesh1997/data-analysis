
#Association Rules
install.packages('arules')
library(arules)
Titanic<-read.csv("/Volumes/E/Excelr/Course Content/Data Science/A.Rules/Titanic.csv")

Titanic<-Titanic[,-c(1)]
rules <- apriori(Titanic)
arules::inspect(rules)
rules.sorted <- sort(rules, by="lift")
arules::inspect(rules.sorted)

# rules with rhs containing "Survived" only
rules <- apriori(Titanic,parameter = list(minlen=1, supp=0.2, conf=0.5)
                 ,appearance = list(rhs=c("Survived=No", "Survived=Yes")
                                    ,default="lhs"),control = list(verbose=F))
arules::inspect(rules)
