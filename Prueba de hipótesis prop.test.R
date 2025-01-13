
# Datos
x <- 12                   # Número de termas defectuosas
n <- 150                  # Tamaño de muestra
p0 <- 0.04                # Valor hipotético
alpha <- 0.04             # Nivel de significancia
conf_level <- 1 - alpha   # Nivel de confianza complementario a alpha


# Prueba de hipótesis usando prop.test
resultado <- prop.test(
  x,                        # Número de "evento de interes" (defectos en este caso)
  n,                        # Tamaño de muestra
  p = p0,                   # Valor hipotético
  alternative = "greater",  # Prueba unilateral derecha (H1: p > 0.04)
  conf.level = conf_level,  # Nivel de confianza del 96%, complementario al 4% de alpha
  correct = FALSE)          # Sin corrección de continuidad Yates 
  

# Resultados
print(resultado)
