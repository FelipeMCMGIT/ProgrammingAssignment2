	## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#Funciones que almacenan una matriz y su inversa
#Las funciones son almacendas en una lista que pueden mandarse llamar desde cacheSolve.

makeCacheMatrix <- function(x = matrix()) {
  invertida <- NULL
  set <- function(y) {
    x <<- y
    invertida <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) invertida <<- inverse
  getInverse <- function() invertida
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## Write a short comment describing this function
#Funcion que crea la inversa de la matriz creada.
  cacheSolve <- function(x, ...) {
    invertida <- x$getInverse()
    if (!is.null(invertida)) {
      message("Datos de caché")
      return(invertida)
    }
    matriz <- x$get()
    invertida <- solve(matriz, ...)
    x$setInverse(invertida)
    invertida
  }
