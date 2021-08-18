# Histogram classes
df1 <- as.data.frame(tabela_classe)

df1 %>% plot_ly(x = ~Var1, y = ~Freq) %>%
  layout(xaxis=list(title='Intervalo de Idades'),
         yaxis=list(title='Frequencia'))

# frequency polygon graph
plot(tabela_classe, type = 'o', xlab='Intervalo',ylab = 'Frequência', main ='FREQUENCY POLYGON')

# ogive graph
freq_rel_classe <- prop.table(table(cut(srag_atual$idade, breaks = intervalo)))
freq_acum <- cumsum(tabela_classe)[seq_along(intervalo)]

plot(intervalo,freq_acum, type='o')

df <- as.data.frame(freq_acum)

ggplot(df, aes(x=intervalo, y=freq_acum))+
  geom_line()+
  geom_point()+
  labs(title='GRAFICO OGIVA: FREQUENCIA ACUMULADA POR CLASSES DE IDADES',
       x='Idade',
       y='Frequencia Acumulada de SRAG',
       color='Meses')+
  theme_gray()