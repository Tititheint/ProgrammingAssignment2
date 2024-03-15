makeVector <- function(x = numeric()) {
	        m <- NULL
	        set <- function(y) {
	                x <<- y
	                m <<- NULL
	        }
	        get <- function() x
	        setmean <- function(mean) m <<- mean
	        getmean <- function() m
	        list(set = set, get = get,
	             setmean = setmean,
	             getmean = getmean)
	}

cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(1:6, 2, 3)) {
	x[1, 2]
[1] 3
x[2, 1]
[1] 2	
}


## Write a short comment describing this function

cacheSolve <- function(x = matrix(1:6, 2,3)) {       
}
	
