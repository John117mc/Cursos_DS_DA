library(ggplot2)
library(plotly)
library(dplyr)
library(rstatix)

# with outliers 
ggplot(data = srag_mod, aes(x=" ",y=idade)) +
  geom_boxplot(width=.4, outlier.color = 'red', color='purple')

# if NA values in data
srag_atual %>% filter(!is.na(idade)) %>%
  ggplot(aes(x='',y=idade)) +
  geom_boxplot(width=.4)


fig <- plot_ly(srag_atual, y=~idade,type = 'box') %>%
  layout(title ='BOXPLOT POR IDADES', 
         yaxis=list(title='Idade'))


ggplot(srag_atual, aes(x=factor(sexo), y=idade))+
  geom_boxplot(color="red", fill="orange", alpha=0.2)+
  labs(title='DISTRIBUIÇÂO DAS IDADES E SEXO',
       x='SEXO',y='IDADE')


plot_ly(srag_atual, y = ~idade, color = ~sexo, type = "box") %>%
  layout(title='DISTRIBUIÇÂO DAS IDADES E SEXO',
         yaxis=list(title='IDADES'), xaxis=list(title='SEXO'))
  







