## Put comments here that give an overall description of what your
## functions do

# This project provides the functions of creating a matrix that can cache its own inverse matrix,
# and cache the inverse of the matrix

## Write a short comment describing this function

# to create a matrix that can cache its inverse matrix
makeCacheMatrix <- function(x = matrix()) {
    
    # first of all, create and initialize the variable inverseMatrix, and set its value to null
    inverseMatrix <- NULL
    
    # set the matrix by giving a matrix as argument
    setMatrix <- function(y = matrix()) {

        x <<- y # supperassign y to x
        inverseMatrix <<- NULL # supperassign NULL value to the variable inverseMatrix
    }
    
    # get the given matrix
    getMatrix <- function() {

        return(x) # return the given matrix
    }
    
    # set the inverse of the matrix by giving it as argument
    setInverse <- function(solve = matrix()) {

        x <<- solve # supperassign the inverse of matrix to the variable x
    }
    
    # get the inverse of the matrix
    getInverse <- function() {

        return(x) # return the inverse of the matrix
    }
    
    # combine the four inner functions to a list, so that the functions can be called by using '$'
    list(setMatrix = setMatrix, getMatrix = getMatrix,
         setInverse = setInverse,
         getInverse = getInverse)

} # end function


## Write a short comment describing this function

# to cache the inverse of the matrix
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    inverseMatrix <- x$getInverse() # initialize the variable inverseMatrix with the inverse of matrix
    
    # first, check whether the given matrix is already inversed and does not change
    if (!is.null(inverseMatrix) && identical(inverseMatrix, x)) {
        
        return(inverseMatrix) # if true, return the inverse of matrix to the function
    } # end if
    else { # otherwise,

        matrix <- x$getMatrix() # get the given matrix, and assign it to the variable matrix
       
        inverseMatrix <- solve(matrix) # assign the inverse of matrix to the variable inverseMatrix,
                                       # here using the method 'solve', since only the square matrices have its inverse
        x$setInverse(inverseMatrix) # inverse the given matrix, and assign the value to the variable called inverseMatrix

        return(inverseMatrix) # return the value of inverseMatrix to the function
    } # end else

} # end function