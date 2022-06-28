## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inversa <- NULL
        set <- function(y) {
                x <<- y
                inversa <<- NULL
        }
        get <- function() x ## metodo devuelve el valor de la matriz
        setInversa <- function(inversacalculada) inversa <<- inversacalculada
        getInversa <- function() inversa
        list(set = set, get = get,
             setInversa = setInversa,
             getInversa = getInversa)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inversa <- x$getInversa()
        if(!is.null(inversa)) {
                message("getting cached data")
                return(inversa)
        }
        data <- x$get()
        inversa <- solve(data, ...) ##inversa de la matriz data
        x$setInversa(inversa) ##dar ese valor a x
        inversa ## devuelve una matrix que es la inversa
}
