[`Estadística con R`](../Readme.md) > `Sesión 01: Fundamentos de R` 

## Vectores

### OBJETIVO

Al final de el `Ejercicio-01` serás capaz de:
- Consultar el tipo de dato de una variable
- Declarar vectores
- Agregar elementos a vectores
- Combinar vectores
- Crear vectres utilizando diferentes funciones
- Identificar características de los vectores
- Accesar a vectores
- Operar con vectores

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash

### TEORÍA: Vectores

#### Parte 1. Tipo de Dato
Hasta ahora, hemos aprendido a declarar variables y a utilizar R como calculadora. Sólo hemos declarado variables **numéricas**. Pero, existen diferentes tipos de datos con los que vamos a trabajar:
1. character
2. numeric
3. integer
4. logical

```r
variable.char <- 'Hola R'
variable.num <- 3.1416
variable.int <- 149213L
variable.logical <- TRUE
```

Para consultar el tipo de dato que es cada variable que acabamos de declarar, podemos utilizar la función `typeof(var)` o la función `class(var)`.

```r
print(class(variable.char))
print(class(variable.num)) 
print(class(variable.int))
print(class(variable.logical))
``` 

**Reto 0: ¿Qué nos devuelve si, en lugar de utilizar la función `class(var)` utilizamos la función `typeof(var)`?**


#### Parte 2. Definición de un vector
Pero, algunas veces, necesitamos hacer la misma serie de operaciones sobre diferentes variables. Por ejemplo, imagina que necesitas, a cada número del 1 al 10, multiplicarlo por 0.582 y elevarlo al cuadrado. Tendríamos que hacer:

```r
x.1 <- 1
print((x.1*0.582)^2)

 x.2 <- 2
 print((x.2*0.582)^2)
```
y así sucesivamente hasta llegar al 10. Puedes notar que esta operación es repetitiva, lo único que va cambiando es el valor de la variable. En este tipo de casos es cuándo vale la pena trabajar con vectores. Un **vector** es un arreglo de datos de una dimensión, usualmente todos los elementos del vector son del mismo tipo.

<details>

        <summary>Solucion</summary>
        <p> Agrega aqui la solucion</p>
        <p>Recuerda! escribe cada paso para desarrollar la solución del ejemplo o reto </p>
</details>

Agrega una imagen dentro del ejemplo o reto para dar una mejor experiencia al alumno (Es forzoso que agregages al menos una) ![imagen](https://picsum.photos/200/300)


