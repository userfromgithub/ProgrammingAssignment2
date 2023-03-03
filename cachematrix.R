## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    newMatrix <- NULL

    setMatrix <- function(y) {
        x <<- y
        newMatrix <<- NULL
    }
    
    getMatrix <- function() x
        newMatrix <<- x

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    newMatrix <- makeCacheMatrix$getMatrix()

    if (!is.null(newMatrix) && newMatrix == x) {
        return(newMatrix)
    }
    
    inversedMatrix <<- solve(newMatrix)
    return(inversedMatrix)
}
