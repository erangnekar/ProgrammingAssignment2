## Put comments here that give an overall description of what your
## functions do

## sets and gets values of both the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
    a <- NULL
    set < - function(y) {
        x <<- y
        a <<- NULL
    }
    get <- function () x
    setinverse <- function(solve) a <<- solve
    getinverse <- function() a
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated (and 
## the matrix has not changed), then the cachesolve should retrieve the inverse 
## from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    a <- x$getinverse()
    if(!isnull(a)) {
        message("getting data from cache")
        return(a)
    }
    dat <- x$get()
    a <- solve(dat, ...)
    x$setinv(a)
    a
}
