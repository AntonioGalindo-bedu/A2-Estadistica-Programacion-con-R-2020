[`Estadística con R`](../Readme.md) > `Sesión 01: Fundamentos de R` 

## Data Frames

### OBJETIVO

Al final de el `Ejercicio-02` serás capaz de:
- Crear un dataframe
- Ver las características de un dataframe
- Accesar a los elementos de un dataframe
- Agregar datos a un dataframe
- Transformar una columna 
- Agregar o eliminar columnas
- Entender las **condicionales**

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash
5. Completar el `Ejemplo-01` de la `Sesión-01`

### TEORÍA: DATAFRAMES


#### PARTE 1. ¿CÓMO CREAR UN DATA FRAME?

```r
df.example <- data.frame(clave = c(1,2,3),
                             grado = c(4,4,5),
                             sexo = c('F','M','M'))
df.example
```

#### PARTE 2. ¿CÓMO VER LAS CARACTERÍSITCAS DE UN DATAFRAME?

```r
# Para ver el número de renglones de un dataframe utilizamos nrow
nrow(iris)

# Para ver el número de columnas de un dataframe utilizamos ncol
ncol(iris)

# Para ver el número de renglones y columnas de un dataframe utilizamos dim
dim(iris)

# Utilizamos paste para imprimir texto y el resultado de código
print(paste('El número de columnas de nuestro dataframe es:', ncol(iris)))
print(paste('El número de renglones de nuesrtro dataframe es:', nrow(iris)))

# Para ver el nombre de las columnas utilizamos names
names(iris)

```

#### PARTE 3. ¿CÓMO VEO LOS ELEMENTOS, COLUMNAS O RENGLONES DE UN DATAFRAME?

```r
# Para traer un elemento de un dataframe debemos darle la ubicación
# Primer renglón, primer columna
iris[1,1]
# Tercer renglón, primer columna
iris[3,1]
# Tercer renglón, segunda columna
iris[3,2]


# Para traer renglones completos de un dataframe
# El primer renglón utilizando el número de renglón que es
iris[1,]
# Los tres primeros renglones 
iris[1:3,]
# Todos los renglones menos el primero
iris[-1,]


# Para traer columnas completas de un dataframe
# La primer columna por el número de columna que es
iris[,1]
# La primer columna por el nombre de columna que es
iris[,'Sepal.Length']
# La primer columna por el nombre de columna que es
iris$Sepal.Length
# Las primeras dos columnas 
iris[,1:2]
# Todas las columnas menos la primera
iris[,-1]


# Para traer elementos segun renglones y columnas
# Primer renglón, dos primeras columnas
iris[1, 1:2]
iris[1, c('Sepal.Length', 'Sepal.Width')]

# Primeros tres renglones, dos últimas columnas
iris[1:3, 2:3]

# Primeros tres renglones, primer y última columna
iris[1:3, c(1,3)]
iris[1:3, c('Sepal.Length', 'Petal.Length')]

```

#### PARTE 4. ACCESAR A LOS ELEMENTOS DE UN VECTOR

```r
# Para extraer el primer elemento de un vector
vector.multiply.four[1]

# Para extrar el primer y segundo elemento
vector.multiply.four[1:2]

# Para extraer el primer y tercer elemento
vector.multiply.four[c(1,3)]


# Para extraer el último elemento del vector
loc.last <- length(vector.multiply.four)
print(loc.last)
vector.multiply.four[loc.last]

# Para extrar el penúltimo elemento del vector
vector.multiply.four[loc.last-1]

# Para extrar todos los elementos menos el primero
vector.multiply.four[-1]

# Para extraer todos los elementos menos el último
vector.multiply.four[-loc.last]

# Para extraer todos los elementos menos el primero y el último
vector.multiply.four[-c(1, loc.last)]


# Para sustituir el valor de un elemento, por ejemplo el primero
vector.multiply.four[1] <- 100
print(vector.multiply.four)
```


#### PARTE 5. OPERACIONES CON VECTORES

```r

# Para agreger un nuevo renglón utilizamos rbind
iris.parte2 <- data.frame(Sepal.Length = c(6,7),
                                    Sepal.Width = c(2.5,3.5),
                                    Petal.Length = c(3,3),
                                    Petal.Width = c(0.01,2.08),
                                    Species = c('virginica','versicolor'))
iris
iris.parte2

df.iris <- rbind(iris, iris.parte2)
df.iris

# Para agregar una columna 
df.example.newcolumn <- data.frame(calificacion = c(9,6,10))
df.example.newcolumn
df.example <- cbind(df.example, df.example.newcolumn)
df.example

```

#### PARTE 6. ¿CÓMO TRANSFORMO, AGREGO O ELIMINO UNA COLUMNA?


```r

# Para transformar una columna
df.example$calificacion <- df.example$calificacion + 0.5
df.example

# Para transformar una columna y agregar la transformación como una nueva
df.example$nueva_col <- (df.example$calificacion + 8)/2
df.example

# Para eliminar una columna
df.example$grado <- NULL
df.example


```

#### PARTE 7. FUNCIONES ÚTILES CON DATAFRAMES


```r
# Funciones útiles 
# Para ver los primeros 8 elementos del dataframe
head(iris, 8)

# Para ver los ultimos 6 elementos del dataframe
tail(iris)

# Ver los distintos elementos de una columna
unique(iris$Species)

# Cambiar los nombres de las columnas
names(iris) 
names(iris) <- c("Longitud.Sepalo","Ancho.Sepalo","Longitud.Petalo","Ancho.Petalo","Especies")
head(iris)

```

