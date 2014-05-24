## A function to create a matrix and store it in the global environment, and a function to display the inverted matrix.

## Function that lets user define a new matrix and save it in the global environment as 'newmatrix'

makeCacheMatrix <- function(x = matrix()) {
        newmatrix <<- x
}

## Function that takes a matrix as input and returns the inverted matrix. Uses inverted matrix from cache if available.

cacheSolve <- function(x, ...) {
        ## Check if matrices exist. If not the case, then create empty matrices
        if (!exists("originalmatrix")) originalmatrix <- matrix()
        if (!exists("cachedmatrix")) cachedmatrix <- matrix()
        ## Check if input matrix is the same as the matrix in cache. If so, skip inverting matrix. If not, invert matrix and store in cache.
        if (!identical(originalmatrix,x)){
                originalmatrix <- x
                cachedmatrix <- solve(x)
        }
        ## Return inverted matrix from cache
        return(cachedmatrix)
}
