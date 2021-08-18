library(nortest)

# 4 main normality tests (numeric) e 2 charts
# when the parameter p > 0,05 (normal distribution)

# Histogram
hist(covid_campinas$casos_novos, main = 'Normal Distribution',probability = T, 
     col = 'blue', xlab='Casos Novos')
lines(density(covid_campinas$casos_novos), col = 'red')

# QQPLOT (normal distribution chart)
qqnorm(covid_campinas$casos_novos, col='red')
qqline(covid_campinas$casos_novos)

# Shapiro Walk (Limit 5000 rows)
shapiro.test(covid_campinas$casos_novos)

# Anderson-Darling
ad.test(covid_campinas$casos_novos)

# Kolmogorov_Smirnov
lillie.test(covid_campinas$casos_novos)

#Cramer-von Mises
cvm.test(covid_campinas$casos_novos)