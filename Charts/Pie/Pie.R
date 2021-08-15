library(ggplot2)
library(plotly)
library(scales)

## GGPLOT
grafico <- ggplot(srag_atual_camp, aes(x='',fill=sexo))+
  geom_bar(width=1)+
  coord_polar('y')
grafico + theme(plot.background = element_rect(fill='gray',colour='red'))

grafico <- data.frame(
  grupo=c("Feminino","Masculino"),
  valores=c(1041,1311))

soma=sum(table(srag_atual_camp$sexo))

grafico %>% 
  ggplot(aes(x='', y=valores, fill=grupo))+
  geom_col()+
  geom_text(aes(label = percent(valores/soma, accuracy=0.1)), position = position_stack(vjust = 0.5))+
  scale_fill_brewer(palette='R3')+
  coord_polar('y')+
  theme_void()+
  labs(title='QUANTIDADE POR SEXO',
       fill='LEGENDA')

## PLOTLY
fig <- plot_ly(srag_atual_camp, labels=~sexo, type = 'pie')
