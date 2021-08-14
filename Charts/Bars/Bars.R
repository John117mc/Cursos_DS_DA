library(ggplot2)
library(plotly)
library(dplyr)
library(rstatix)


ggplot(srag_mod, aes(x=sexo))+
  geom_bar(fill = 'red')+
  labs(title = 'Quantidade por sexo',
       subtitle = 'SRAG',
       x = 'Sexo', y = 'Contagem')


ggplot(srag_mod, aes(raca))+
  geom_bar(fill = 'blue')+
  labs(title = 'Quantidade por raça',
       subtitle = "SRAG",
       x = 'Raça', y = 'Contagem')


ggplot(srag_mod, aes(x=raca, y=sexo, fill = factor(regiao)))+
  geom_col(position = 'dodge') +
  labs(title = "Região por sexo e raça",
       x = 'Raça', y = 'Sexo', fill = 'Região')

# horizontal
ggplot(srag_mod, aes(x=raca, y=sexo, fill = factor(regiao)))+
  geom_col(position = 'dodge')+
  labs(title = "Região por sexo e raça",
       x = 'Raça', y = 'Sexo', fill = 'Região')+
coord_flip() 


# Stacked chart
grafic<-aggregate(idade ~ sexo + regiao, data = srag_mod, FUN = mean)
ggplot(grafic, aes(x = regiao, y = idade, fill = factor(sexo)))+
  geom_col(position = 'stack')
 
srag_mod %>% plot_ly(x = ~raca) %>%
  layout(xaxis= list(title='Raça'),
         yaxis= list(title='Quantidade'))