## Put comments here that give an overall description of what your
## functions do

## Create a special "matrix". This function does the following:
        # sets the matrix
        # gets the matrix
        # sets the inverse
        # gets the inverse
        # the output of this function can be used as input to cacheSolve()
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}




## Here x is the outpt from makeCacheMatrix(). This function will return the inverse of the input.
        # If the inverse has already been calculated, then this function gets the outpt from the cache 
        # and does not recompute the inverse

cacheSolve <- function(x, ...) {
                inv <- x$getinverse()
                if(!is.null(inv)) {
                        message("getting cached data")
                        return(inv)
                }
                data <- x$get()
                inv <- solve(data, ...)
                x$setinverse(inv)
                return(inv)
        }

