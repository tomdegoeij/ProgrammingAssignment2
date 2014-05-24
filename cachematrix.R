## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        newmatrix <<- x
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        if (!exists("originalmatrix")) originalmatrix <- matrix()
        if (!exists("cachedmatrix")) cachedmatrix <- matrix()
        ## Return a matrix that is the inverse of 'x
        if (!identical(originalmatrix,x)){
                originalmatrix <- x
                cachedmatrix <- solve(x)
        }
        return(cachedmatrix)
}
