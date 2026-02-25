# Instalar y cargar librerías necesarias
if(!require(quantmod)) install.packages("quantmod")
if(!require(dplyr)) install.packages("dplyr")
if(!require(tidyr)) install.packages("tidyr")
if(!require(ggplot2)) install.packages("ggplot2")

library(quantmod)
library(dplyr)
library(tidyr)
library(ggplot2)

# Definir tickers
tech_stocks <- c("AAPL", "NVDA", "MSFT")   # Sector tecnología
retail_stocks <- c("KO", "PEP", "WMT")     # Sector retail/bebidas
tickers <- c(tech_stocks, retail_stocks)

# Descargar datos históricos
start_date <- "2020-01-01"
end_date <- "2026-02-024"
getSymbols(tickers, from = start_date, to = end_date)

# Extraer precios de cierre ajustados y combinarlos
data <- do.call(merge, lapply(tickers, function(ticker) Ad(get(ticker))))
colnames(data) <- tickers

# Calcular retornos diarios
returns <- na.omit(ROC(data, type = "discrete"))
