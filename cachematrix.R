## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	
	r <- NULL
	set <- function(y){
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setInverse <- function(inverse){
		r <<- inverse
	}
	getInverse <- function() r
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		r <- x$getInverse()
		if(!is.null(r)){
			message("getting cached data")
			return(r)
		}
		
		data <- x$get()
		r <- solve(data,...)
		x$setInverse(r)
		r
}
