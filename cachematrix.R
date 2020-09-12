## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {  # set the function to require a matrix as input
         i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x #get the value of the matrix
        setmean <- function(mean) i <<- inverse #calculates the inverse of the matrix
        getmean <- function() i
        list(set = set, get = get,
             setinverse = setinverse
             getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)) {  # checks if the inverse has already been calculated
                message("getting cached data")
                return(i)  # returns the inverse if it has been calculated
        }
        data <- x$get()
        i <- solve(data, ...)   #if the inverse has not been calculated, it will be done by the following function
        x$setinverse(i)
        i
}
