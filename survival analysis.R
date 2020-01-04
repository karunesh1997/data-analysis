install.packages("survival")
library(survival)


attach(survival_unemployment1)
# Define variables 
time <- spell
event <- event
X <- cbind(logwage, ui, age)
group <- ui
# Kaplan-Meier non-parametric analysis
kmsurvival <- survivival_unemployment(Surv(time,event) ~ 1)
summary(kmsurvival)
plot(kmsurvival, xlab="Time", ylab="Survival Probability")

# Kaplan-Meier non-parametric analysis by group
kmsurvival1 <- survfit(Surv(time, event) ~ group)
summary(kmsurvival1)
plot(kmsurvival1, xlab="Time", ylab="Survival Probability")
