## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse as computing
## Inverse of a matrix is usually a heavy time consuming computation.
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
##Storing in a list the four elements the set,get,setinverse and getinverse functions.
list(set = set,
get = get,
setInverse = setInverse,
getInverse = getInverse)
}
## This function computes the inverse of the special "matrix" created by
## makeCacheMatrix above. If the inverse has already been calculated (and the
## matrix has not changed), then it should retrieve the inverse from the cache.


## Write a short comment describing this function
## A function required to save time consuming heavy computation here (cache)
cacheSolve <- function(x, ...) {
inv <- x$getInverse()
if (!is.null(inv)) {
message("getting cached data")
return(inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv

        ## Return a matrix that is the inverse of 'x'
}
