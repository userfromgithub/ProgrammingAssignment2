## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    newMatrix <- NULL

    setmatrix <- function(y) {
        x <<- y
        newMatrix <<- NULL
    }
    
    getmatrix <- function() x

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    cacheMatrix <- solve(x)
    
    if (cacheMatrix == x) {
        cacheMateix <- NULL
    }

}
