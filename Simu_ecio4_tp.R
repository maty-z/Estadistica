n = 100000
casos = vector(mode = "integer",length = n)

for (i in 1:n){
  favorables = 0
  p = sample(1:52,52)
  o = ordMax(p)
  casos[i] = o
}
hist(casos)
print(paste("Valor esperado: ",mean(casos)))
print(paste("Desvío estandar: ",sd(casos)))