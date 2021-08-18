library(sampling)
library(TeachingSampling)

# absolute frequency
freq_abs <- table(srag_atual$idade)

# relative frequency
freq_rel <- prop.table(freq_abs)

# percentage of relative frequency
p_freq_rel <- 100 * prop.table(freq_rel)

# create the TOTAL line
freq_abs <- c(freq_abs, sum(freq_abs))
names(freq_abs)[112] <- 'TOTAL'

freq_rel <- c(freq_rel, sum(freq_rel))

p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))


# final table
tabela_final <- cbind(freq_abs, 
                      freq_rel = round(freq_rel, 5),
                      p_freq_rel = round(p_freq_rel, 2))

# create frequency classes table
intervalo <- seq(0,120,10)
tabela_classe <- table(cut(srag_atual$idade, breaks = intervalo, right = F))
View(freq_acum)