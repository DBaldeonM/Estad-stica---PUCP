
# Datos
x <- 12       # Número de defectuosas
n <- 150      # Tamaño de la muestra
p0 <- 0.04    # Proporción bajo H0
alpha <- 0.04 # Nivel de significancia

# Proporción muestral
p_hat <- x / n

# Estadístico de prueba (Z)
z <- (p_hat - p0) / sqrt((p0 * (1 - p0)) / n)

# P-valor (prueba unilateral derecha)
p_valor <- 1 - pnorm(z)

# Valor crítico para el nivel de significancia
z_critico <- qnorm(1 - alpha)

# Resultados
cat("Proporción muestral (p):", p_hat, "\n")
cat("Estadístico de prueba (Z):", z, "\n")
cat("P-valor:", p_valor, "\n")
cat("Valor crítico (Zα):", z_critico, "\n")

# Decisión
if (z > z_critico) {
  cat("Rechazamos H0: Se debe implementar el programa de capacitación.\n")
} else {
  cat("No se rechaza H0: No es necesario implementar el programa de capacitación.\n")
}




