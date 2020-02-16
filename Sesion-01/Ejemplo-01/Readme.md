[`Estadística con R`](../Readme.md) > `Sesión 01: Fundamentos de R` 

## Vectores

### OBJETIVO

Al final de el `Ejercicio-01` serás capaz de:
- Consultar el tipo de dato de una variable
- Declarar vectores
- Agregar elementos a vectores
- Combinar vectores
- Crear vectors utilizando diferentes funciones
- Identificar características de los vectores
- Accesar a vectores
- Operar con vectores

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash

### TEORÍA: Vectores

#### PARTE 1. ¿QUÉ TIPO DE DATO ES UNA VARIABLE?
Hasta ahora, hemos aprendido a declarar variables y a utilizar R como calculadora. Sólo hemos declarado variables numéricas. Pero, existen diferentes tipos de datos con los que vamos a trabajar: **character, numeric, integer y logical**.

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
<details>
        <summary>¿Qué nos devuelve si, en lugar de utilizar la función `class(var)` utilizamos la función `typeof(var)`?</summary>
        <p> 
```r
print(typeof(variable.char))
print(typeof(variable.num)) 
print(typeof(variable.int))
print(typeof(variable.logical))
``` </p>
</details>

#### PARTE 2. ¿CÓMO DEFINIR UN VECTOR?
Muchas veces necesitamos hacer la misma serie de operaciones sobre diferentes variables. Imagina que necesitas, a los números del 1 al 10, multiplicarlos por 0.582 y elevarlos al cuadrado. Con lo que sabemos hasta ahora, tendríamos que hacer

```r
x.1 <- 1
print((x.1*0.582)^2)

x.2 <- 2
print((x.2*0.582)^2)
```
hasta llegar al 10. Puedes notar que esta operación es **repetitiva**, lo único que va cambiando es el valor de la variable. En este tipo de casos es cuándo vale la pena trabajar con vectores. Un **vector** es un arreglo de datos en el cuál todos los elementos son del mismo tipo.

<details>

        <summary>Solucion</summary>
        <p> Agrega aqui la solucion</p>
        <p>Recuerda! escribe cada paso para desarrollar la solución del ejemplo o reto </p>
</details>

Agrega una imagen dentro del ejemplo o reto para dar una mejor experiencia al alumno (Es forzoso que agregages al menos una) ![imagen](https://picsum.photos/200/300)


