
# Datos
x <- 12                   # Número de defectuosas en la muestra
n <- 150                  # Tamaño total de la muestra
p0 <- 0.04                # Valor hipotetico
alpha <- 0.04             # Nivel de significancia
conf_level <- 1 - alpha   # Nivel de confianza complementario a alpha


# Prueba de hipótesis usando prop.test
resultado <- prop.test(
  x,                        # Número de "evento de interes" (defectos en este caso)
  n,                        # Tamaño total de la muestra
  p = p0,                   # Valor hipotetico
  alternative = "greater",  # Prueba unilateral derecha (H1: p > 0.04)
  conf.level = conf_level,  # Nivel de confianza del 96%, complementario al 4% de alpha
  correct = FALSE)          # Sin corrección de continuidad Yates 
  

# Resultados
print(resultado)