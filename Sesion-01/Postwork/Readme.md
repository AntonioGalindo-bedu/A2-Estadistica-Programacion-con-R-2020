### OBJETIVO

Al final de el `Postwork` serás capaz de:
- Leer un dataframe
- Identificar el tipo de cada columna

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash

### INSTRUCCIONES

- Haz un llamado a la libreria dplyr

Objetivos:
• Seleccionar columnas
• Seleccionar registros
• Crear nuevas variables
• Sumarizar datos
• Ordenar datos
• Uniones de datos

Como es habitual trabajamos con ejemplos data(iris); library(dplyr):

Seleccionar columnas select():

two.columns <- iris %>%
select(Sepal.Length,Sepal.Width)

columns = c(“Sepal.Length”,”Sepal.Width”)
two.columns <- iris %>%
select(columns)
Seleccionar registros filter():

setosa <- iris %>%
filter(Species==”setosa”)

species_to_select = c(“setosa”,”virginica”)
species <- iris %>%
filter(Species %in% species_to_select)
table(species$Species)
Crear nuevas variables mutate():

iris2 <- iris %>%
mutate(Sepal.Length.6 = ifelse(Sepal.Length >=6, “GE 6”, “LT 6”)) %>%
mutate(Sepal.Length.rela = Sepal.Length/mean(Sepal.Length))
Sumarizar group_by() summarize():

iris %>% group_by(Species) %>%
summarize(mean.Sepal.Length = mean(Sepal.Length),
sd.Sepal.Length = sd(Sepal.Length),
rows = n())
Ordenar datos arrange():

order1 <- iris %>%
arrange(Sepal.Length)

order2 <- iris %>%
arrange(desc(Sepal.Length))

iris %>% group_by(Species) %>%
summarize(mean.Sepal.Length = mean(Sepal.Length),
sd.Sepal.Length = sd(Sepal.Length),
rows = n()) %>%
arrange(mean.Sepal.Length)
Uniones de datos:

Inner_join():

iris2 <- iris %>%
mutate(id = row_number())

iris3 <- iris2 %>%
filter(Species==”setosa”) %>%
mutate(Sepal.Length.6 = ifelse(Sepal.Length >=6, “GE 6”, “LT 6”)) %>%
mutate(Sepal.Length.rela = Sepal.Length/mean(Sepal.Length)) %>%
select(id,Sepal.Length.6,Sepal.Length.rela)

iris4 <- iris2 %>% inner_join(iris3, by=c(“id”))
Left_join():

iris5 <- iris2 %>% left_join(iris3, by=c(“id”))
anti_join():

iris6 <- iris2 %>% anti_join(iris3)




