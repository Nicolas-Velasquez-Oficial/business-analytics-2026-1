##############################################################
# Parcial – Corte I
# Business Analytics –
# Nombre: _______________________
# Correo: _______________________
# Fecha:  2026-03-04
##############################################################

# Instrucciones:
# - Solo se permite el uso de sus notebooks y del código en R trabajado durante el curso.
# - Tiempo disponible: 120 minutos.
# - Entrega: enviar este archivo (apellido_nombre.R) al correo:
#   velasquez_juan@javeriana.edu.co
# - Incluya en este archivo:
#   (1) Las respuestas de la parte teórica en la tabla de respuestas.
#   (2) El código utilizado para cálculos, gráficos y justificaciones en la Parte 2.
#   Adjunte al correo un pdf (apellido_nombre.pdf)donde esten las tablas, clasificaciones, gráficos que desarrolle en este parcial.
# - Documente claramente su código.

##############################################################
# TABLA DE RESPUESTAS – PARTE 1
# (Complete con la letra de su respuesta en cada número)
##############################################################

respuestas_parte1 <- data.frame(
  Pregunta = 1:5,
  Respuesta = c("", "", "", "", "")  # <-- Complete aquí con a, b, c, d o e
)

##############################################################
# PARTE 2 (3.0 puntos) – Análisis con base CoinTracker_2024_2025.csv
##############################################################
##############################################################
# Descripción de la base: CoinTracker_2024_2025.csv
#
# Base semanal desde febrero 2024 hasta diciembre 2025.
# Cada fila representa una semana calendario.
#
# Incluye:
# - Ventas: Sales
# - Inversión publicitaria por canal:
#   cost_Facebook, cost_Google, cost_X,
#   cost_TikTok, cost_Reddit
# - Impresiones por canal:
#   impression_Facebook, impression_Google,
#   impression_X, impression_TikTok,
#   impression_Reddit
# - Variables macroeconómicas:
#   wei, Retail_sales__total, GAFO_1_, unemployment,
#   cpi, cpi_percent_change, cfi_shipments,
#   ics, fed_rate, mei, sp, sp_pecentage_change , Sales_2024, Sales_2025
#
# Objetivo: analizar la relación entre inversión digital,
# eficiencia publicitaria (CPM), ventas y entorno macroeconómico.
##############################################################

# A partir de esta información, desarrolle los siguientes puntos:

library(dplyr)
library(ggplot2)

CoinTracker <- read.csv("acá va su ruta/CoinTracker_2024_2025.csv")


##############################################################
# 1. (0.6 puntos)
# Realice una tabla descriptiva para TODO el período (feb 2024 - dic 2025)
# incluyendo para las variables:
# - Ventas
# - Spend por canal x meta, 
# - Impresiones por canal
#
# Debe calcular:
# Suma, Mínimo, Máximo, Media, Mediana y Moda.
#
# Guarde el resultado en un archivo llamado:
# descriptivos_cointracker.csv
##############################################################

##############################################################
# 2. (0.6 puntos)
# Cálculo e interpretación del CPM por canal
# Para todo el período (febrero 2024 – diciembre 2025),
# calcule el CPM para cada canal digital.
#
# Fórmula:
# CPM = (Costo Total del Canal / Impresiones Totales del Canal) * 1000
#
# Con base en sus resultados:
# ¿Cuál es el canal más eficiente según el CPM?
# ¿Cuál es el menos eficiente?
# Justifique cuantitativamente e interprete estratégicamente.
# giuarden en csv la tabla 
##############################################################

##############################################################
# 3. (0.6 puntos)
# Genere un gráfico de serie de tiempo donde:
#
# - Eje X: Fecha semanal (Date)
# - Eje Y izquierdo: Ventas (Grafico de barras)
# - Eje Y derecho: Spend por canal (Grafico de líneas)
#
# Requisitos:
# - Ejes correctamente nombrados
# - Unidades no científicas
# - Título claro
# - Leyenda visible
# - Formato profesional
# - Escala comparable entre ventas y spend
#Guarden el grafico como .jpg .png
##############################################################

##############################################################
# 4. (0.6 puntos)
# (responda en comentario no más de 150 palabras)
#
# Según el gráfico:
# - ¿Qué canal parece tener mayor incidencia sobre las ventas?
# - ¿Se observan periodos donde el aumento en spend coincide
#   con aumentos en ventas? Mencione al menos dos intervalos
#   si identifica este fenómeno.
##############################################################

##############################################################
# 5. (0.6 puntos)
# (responda en comentario no más de 90 palabras)
#
# El gerente de CoinTracker considera que Facebook
# es un canal potencial para impulsar la plataforma.
#
# A partir de:
# - Resultados del CPM,
# - Estadísticos descriptivos,
# - Gráfico de ventas vs. inversión,
#
# Evalúe si la evidencia respalda o contradice
# esta hipótesis.
#
# Formule una recomendación estratégica sobre la
# asignación del presupuesto digital entre canales.
# ¿Qué canal(es) deberían priorizarse, mantenerse o reducirse en gasto?
# Justifique con datos.
##############################################################

##############################################################
# 6. BONO (0.5 puntos)
#
# Analice la correlación entre Ventas y las variables macro:
# wei, Retail_sales__total, GAFO_1_, unemployment,
# cpi, cpi_percent_change, cfi_shipments,
# ics, fed_rate, mei, sp, sp_pecentage_change,
# Sales_2024, Sales_2025
#
# Identifique cuál variable macro tiene mayor correlación (pearson)
# en valor absoluto con Ventas y explique si sería un
# buen candidato para un modelo predictivo. 
##############################################################



##############################################################
# GLOSARIO DE VARIABLES MACRO Y COMERCIALES
##############################################################

# wei:
# Weekly Economic Index. Indicador de actividad económica
# de alta frecuencia que captura el dinamismo general
# de la economía en tiempo real.

# Retail_sales__total:
# Ventas minoristas totales en la economía.
# Mide el consumo agregado de los hogares.

# GAFO_1_:
# Ventas minoristas del sector GAFO
# (Gasoline, Autos, Food services and Other retail).
# Aproxima consumo en bienes y servicios clave.

# unemployment:
# Tasa de desempleo.
# Mide el porcentaje de la población activa sin empleo.

# cpi:
# Consumer Price Index (Índice de Precios al Consumidor).
# Mide el nivel general de precios en la economía.

# cpi_percent_change:
# Variación porcentual del CPI.
# Representa la tasa de inflación.

# cfi_shipments:
# Indicador de actividad industrial/logística
# asociado a envíos o producción manufacturera.

# ics:
# Index of Consumer Sentiment.
# Mide la confianza del consumidor respecto
# a la situación económica actual y futura.

# fed_rate:
# Tasa de interés de referencia de la Reserva Federal.
# Influye en crédito, inversión y mercados financieros.

# mei:
# Monthly Economic Index.
# Indicador compuesto de actividad económica agregada.

# sp:
# Nivel del índice S&P 500.
# Refleja el desempeño del mercado accionario estadounidense.

# sp_pecentage_change:
# Variación porcentual del S&P 500.
# Captura retornos del mercado financiero.

# Sales_2024:
# Pico de Ventas correspondientes al año 2024.

# Sales_2025:
# Pico de Ventas correspondientes al año 2025.
##############################################################