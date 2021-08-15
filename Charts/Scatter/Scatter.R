library(ggplot2)
library(plotly)

# 2 variables
fig <- ggplot(srag_atual_camp, aes(x=DT_NOTIFIC, y=idade))+
  geom_point()+
  labs(title='Relação da data de notificação e idade - CAMPINAS',
       x='Meses',
       y='Idades')

# 4 variables
fig <- ggplot(srag_atual_camp, aes(x=DT_NOTIFIC, y=idade, color=raca, shape=sexo))+
  geom_point()+
  labs(title='Relação entre data de notificação, sexo e idade por raça - CAMPINAS',
       x='Data de Notificação',
       y='Idade',
       color='Raça',
       shape='Sexo')

fig <- plot_ly(srag_atual_camp, x=~DT_NOTIFIC, y=~idade, type = 'scatter',
         mode='markers', color=~sexo) %>%
   layout(title='Relação entre data de notificação, idade e sexo - CAMPINAS',
          xaxis=list(title='Data de Notificação'),
          yaxis=list(title='Idade'))

fig <- ggplot(srag_atual_tupa, aes(x=DT_NOTIFIC, y=regiao, size=idade))+
   geom_point()+
   labs(title='Relação entre data e região por idade - TUPÃ',
        x='Data',
        y='Região',
        size='Idade')

fig <- plot_ly(srag_atual_camp, x=~DT_NOTIFIC, y=~regiao, type = 'scatter',
         mode='markers', size=~idade) %>%
   layout(title='Relação entre data e região por idade - TUPÃ',
          xaxis=list(title='Data de Notificação'),
          yaxis=list(title='Região'))