x <- 15;f <- function(x){0}
if(x>0) {
          f <- function(x){x^2}
        }
paste("El valor de f es ",f(x))

raiz = function(n,x){
if(n%%2 == 1 || x >=0 ){
  sign(x)*abs(x)^(1/n) 
  } else{ 
    NaN }
                    }

raiz(5, -32) # raíz quinta de -32

