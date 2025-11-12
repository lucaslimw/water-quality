# Download de biblioteca para IQA
# remotes::install_github("tikatuwq/tikatuwq", dependencies = TRUE)

# Código para calcular IQA
# Estação 2220 !!
df = read.csv("/Users/lucaslima/Downloads/iqa-3.csv", sep = ",")
library(dplyr)
library(tikatuwq)

dados <- df[ , c("Oxigênio.Dissolvido", "DBO..5..20.", "Turbidez", "pH", "Coliformes.Termotolerantes",
           "Nitrogênio.Amoniacal", "Fósforo.Total", "Temperatura.da.Água", "Sólido.Total")]


dados <- dados %>%
  rename(
    od = Oxigênio.Dissolvido,
    coliformes = Coliformes.Termotolerantes,
    dbo = DBO..5..20.,
    pH=pH,
    nt_total = Nitrogênio.Amoniacal,
    p_total = Fósforo.Total,
    turbidez = Turbidez,
    tds = Sólido.Total,
    temperatura = Temperatura.da.Água
  )

#validate_wq(dados)

resultado <- iqa(dados)

dadin <- data.frame(df$data_coleta, resultado)

write.csv(dadin, "/Users/lucaslima/Library/CloudStorage/GoogleDrive-lucas8888.santi@gmail.com/O meu disco/Doutorado_Esalq/ia_biosistemas/trabalho_codigo/df2220.csv", row.names = FALSE)



# ESTAÇÃO DADOS 2191  
df = read.csv("/Users/lucaslima/Downloads/iqa2192.csv", sep = ",")
library(dplyr)
library(tikatuwq)

dados <- df[ , c("Oxigênio.Dissolvido", "DBO..5..20.", "Turbidez", "pH", "Coliformes.Termotolerantes",
                 "Nitrogênio.Amoniacal", "Fósforo.Total", "Temperatura.da.Água", "Sólido.Total")]


dados <- dados %>%
  rename(
    od = Oxigênio.Dissolvido,
    coliformes = Coliformes.Termotolerantes,
    dbo = DBO..5..20.,
    pH=pH,
    nt_total = Nitrogênio.Amoniacal,
    p_total = Fósforo.Total,
    turbidez = Turbidez,
    tds = Sólido.Total,
    temperatura = Temperatura.da.Água
  )

#validate_wq(dados)

resultado <- iqa(dados)
dadin1 <- data.frame(df$data_coleta, resultado)

write.csv(dadin1, "/Users/lucaslima/Library/CloudStorage/GoogleDrive-lucas8888.santi@gmail.com/O meu disco/Doutorado_Esalq/ia_biosistemas/trabalho_codigo/df2192.csv", row.names = FALSE)


# ESTAÇÃO DADOS 2800
df = read.csv("/Users/lucaslima/Downloads/iqa2800.csv", sep = ",")
library(dplyr)
library(tikatuwq)

dados <- df[ , c("Oxigênio.Dissolvido", "DBO..5..20.", "Turbidez", "pH", "Coliformes.Termotolerantes",
                 "Nitrogênio.Amoniacal", "Fósforo.Total", "Temperatura.da.Água", "Sólido.Total")]


dados <- dados %>%
  rename(
    od = Oxigênio.Dissolvido,
    coliformes = Coliformes.Termotolerantes,
    dbo = DBO..5..20.,
    pH=pH,
    nt_total = Nitrogênio.Amoniacal,
    p_total = Fósforo.Total,
    turbidez = Turbidez,
    tds = Sólido.Total,
    temperatura = Temperatura.da.Água
  )

#validate_wq(dados)

resultado <- iqa(dados)

dadin2 <- data.frame(df$data_coleta, resultado)

write.csv(dadin2, "/Users/lucaslima/Library/CloudStorage/GoogleDrive-lucas8888.santi@gmail.com/O meu disco/Doutorado_Esalq/ia_biosistemas/trabalho_codigo/df2800.csv", row.names = FALSE)

