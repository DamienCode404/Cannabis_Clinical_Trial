############################################################
####################### Fisher Exact #######################
############################################################

#Tableau de contingence 
data <- data.frame(
  "Antalgique_non" = c(1, 6),
  "Antalgique_oui" = c(7, 2),
  row.names = c("Cannabis", "Placebo"),
  stringsAsFactors = FALSE
)
colnames(data) <- c("Antalgique_non", "Antalgique_oui")

data

#Visualisation des données 
mosaicplot(data,
           main = "Mosaic plot",
           color = TRUE
)

#Fréquences attendues
chisq.test(data)$expected

#               Antalgique_non Antalgique_oui
# Cannabis            3.5            4.5
# Placebo             3.5            4.5

#Test de Fisher 
test <- fisher.test(data)
test

# Fisher's Exact Test for Count Data
# 
# data:  data
# p-value = 0.04056
# alternative hypothesis: true odds ratio is not equal to 1
# 95 percent confidence interval:
#  0.0009187486 0.9194607531
# sample estimates:
# odds ratio 
# 0.06173059 

test$p.value
#[1] 0.04055944

#Créer une dataframe pour le tableau de contingence
x <- c()
for (row in rownames(data)) {
  for (col in colnames(data)) {
    x <- rbind(x, matrix(rep(c(row, col), data[row, col]), ncol = 2, byrow = TRUE))
  }
}
df <- as.data.frame(x)
colnames(df) <- c("Antalgique_non", "Antalgique_oui")
df

#Test exact de Fisher avec les données brutes
test <- fisher.test(table(df))

#Combiner le plot et le test statistique avec ggbarstats
library(ggstatsplot)
ggbarstats(
  df, Antalgique_non, Antalgique_oui,
  results.subtitle = FALSE,
  subtitle = paste0(
    "Fisher's exact test", ", p-value = ",
    ifelse(test$p.value < 0.001, "< 0.001", round(test$p.value, 3))
  )
)





