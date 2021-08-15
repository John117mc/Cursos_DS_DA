fig <- ggplot(srag_atual, aes(x=idade))+
   geom_histogram(fill='red',bins=25)+
   labs(title = 'HISTOGRAMA DA IDADE',y='Contagem',x='Idade')


fig <- plot_ly(srag_atual, x=~idade, type = 'histogram') %>%
   layout(title='HISTOGRAMA POR IDADES', 
         xaxis=list(title='Idade'),
         yaxis=list(title='Quantidade'))