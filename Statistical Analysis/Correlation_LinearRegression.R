# method: "pearson" for parametric data (normality (normal distribution) and homoscedasticity))
#         "spearman" (large volume of non-parametric data)
#         "kendall" (small volume of non-parametric data)


library(ggplot2)
library(ggpubr)

ggplot(data = covid_campinas, mapping = aes(x = casos, y=obitos)) +
  geom_point() +
  geom_smooth(method = "lm", col='red') + 
  stat_regline_equation(aes(label = paste(..eq.label..,..adj.rr.label..,
                                          sep = "*plain(\",  \")~~")), label.x = 15000,
                        label.y = 1800) +
  theme_bw()


library(corrplot)

matrizcor<-cor(covid_campinas[5:13], method = "spearman")
View(matrizcor)

corrplot(matrizcor, method = 'color',
         type = 'full', order = 'original',
         addCoef.col = 'black', 
         tl.col = 'black', tl.srt = 45) 


covid_cidade<-covid_sp %>% filter(municipio %in% c('Campinas','Guarulhos','Sorocaba',
                                                   'Santo André','Ribeirão Preto'))

ggplot(data = covid_cidade, aes(x=casos, y=obitos, color=municipio)) +
  geom_line() +
  labs(title = 'Evoluçao dos obitos em função de casos COVID',
       x= 'Casos',
       y='Óbitos') +
  theme_classic()
