data("mpg", package = "ggplot2")

graf_disp <- ggplot(mpg, aes(x=displ, y=cty)) +
  geom_point(aes(col=fl)) +
  geom_smooth(method="loess", se = F) +
  labs(subtitle = "Eficiência de Combustíveis",
       y = "Eficiência na Cidade (milhas por galão)", x = "Volume de Cilindradas (l)",
       caption = "Fonte: mpg + Blog 2 Engenheiros")

plot(graf_disp)

Dá uma olhada nos seguintes exemplos. 

x=c(1,2,3,4,5)
x

y=c(4,5,7,8,11)
y

z=c(4,9,14,17,21)
z

h=c(4,8,9,11,10)
h


# Gráfico 1
plot(x,y, xlim=c(0,8), ylim=c(0,27), col='red', xlab='Tempo', ylab='Peso')
points(x,z, pch=2, col='dark blue')
points(x,h, pch=3, col= 'dark green')
legend(5.5,26, c('Tratamento A ', 'Tratamento B ', 'Tratamento C '), col=c('red', 'dark blue', 'dark green'), pch=c(1,2,3))


# Gráfico 2
plot(x,y, xlim=c(0,8), ylim=c(0,27), xlab='Tempo', ylab='Peso', type='o')
points(x,z, pch=2, type='o')
points(x,h, pch=3, type='o')
legend(5.5,26, c('Tratamento A ', 'Tratamento B ', 'Tratamento C '), pch=c(1,2,3))





# Gráfico 3
plot(x,y, xlim=c(0,8), ylim=c(0,27), col='red', xlab='Tempo', ylab='Peso', type='o',  col.lab=2, col.axis='light green', font=2, lwd=4, main='Gráfico 3', col.main=5, sub='Subtítulo', col.sub='grey')
points(x,z, pch=2, col='dark blue', type='o', lwd=4)
points(x,h, pch=3, col= 'dark green', type='o', lwd=8)
legend(5.5,26, c('Tratamento A ', 'Tratamento B ', 'Tratamento C '), col=c('red', 'dark blue', 'dark green'), pch=c(1,2,3))



# Gráfico 4
plot(x,y, xlim=c(0,8), ylim=c(0,27), col='red', xlab='Tempo', ylab='Peso', type='o', col.lab=2, col.axis='light green', font=2, lwd=4, main='Gráfico 3', col.main=5, sub='Subtítulo', col.sub='grey', lty=1)
points(x,z, pch=2, col='dark blue', type='o', lwd=4, lty=10)
points(x,h, pch=3, col= 'dark green', type='o', lwd=8, lty=3)
legend(5.5,26, c('Tratamento A ', 'Tratamento B ', 'Tratamento C '), col=c('red', 'dark blue', 'dark green'), pch=c(1,2,3))


r = function(x) {1.9+1.7*x} 
r1= function(x) { 0.4+4.2*x} 
r2= function(x) { 3.9+1.5*x} 





# Gráfico 5 (plot dos pontos e das equações, com duas legendas)
plot(x,y, xlim=c(0,8), ylim=c(0,27), xlab='Tempo', ylab='Peso', bty="l")
plot(r, 0.5,5, lty=4, add=T)
plot(r1, 0.5, 5, add=T, lty=1)
plot(r2, 0.5, 5, add=T, lty=2)
points(x,z, pch=2)
points(x,h, pch=3)
legend(5.5,18, c('Tratamento A ', 'Tratamento B ', 'Tratamento C '), pch=c(1,2,3))
legend("topright", c('Tratamento A ', 'Tratamento B ', 'Tratamento C '), lty = c(4,1,2))


