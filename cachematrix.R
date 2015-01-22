The functions below seeks to cache the inverse of a matrix.

The makeCacheMatrix creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
y < - NULL
setmatrix <- function (y)
        x <<- y
        m <<- NULL
}
getmatrix <- function()
        x
setinverse <- function(solve)
        m <<- solve
get inverse <- function()
        m
list(setmatrix = setmatrix, getmatrix = getmatrix, 
        setinverse = set inverse
        get-inverse = getinverse)
}
        
        
        
The function cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache. 

cacheSolve <- function(x = matrix(), ...) {
m <- x$getinverse()
if(!is.null(m){
        if(x$setmatrix() == x$getmatrix()) {
                m <- x$getinverse()
                }
        return(m)
        }
y <- x$getmatrix()
m <-solve(y, ...)
x$setinverse(m)
m
}
