## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix() creates a list containing a fumction to 
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of the inverse
# 4. get the value of the inverse




makeCacheMatrix <- function(x = numeric()) {

        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() {
                x
        }
        setinverse <- function(solve) {
                m <<- solve
        } 
        getinverse <- function() {
                m
        }
        list(set = set, get = get,
             setinverse = setinverse,
             setinverse = setinverse)
        
}


## Write a short comment describing this function

# The following function calculates the inverse of the matrix created 
# with the above function. However, it first checks to see if the inverse 
# has already been calculated. If so, it gets the inverse from the cache 
# and skips the computation. Otherwise, it calculates the mean of the data 
# and sets the value of the inverse in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
        
}


