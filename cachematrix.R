## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this function is for caching the inversed matrix
makeCacheMatrix <- function(x = matrix()) {
	im <- NULL

	##store the matrix to be cached	
	set <-function(y){
		x<<-y
		im<<-NULL
	}
	
	##retreive the matrix
	get <-function() x
	
	##store the inversed matrix 
	setinversematrix <-function(inversematrix) im<<-inversematrix

	## retrive the inversed marix
	getinversematrix <-function() im
	list(set = set, get = get, setinversematrix = setinversematrix, getinversematrix = getinversematrix)
}


## Write a short comment describing this function
##this function is to inverse a matrix and also cache it if it first time. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	
	##determine if the matrix to be inversed is already inversed and cached
	im <- x$getinversematrix()
	if(!is.null(im)){
		message("getting cached data")
		return(im)
	}
	
	## inverse the matrix 
	data <- x$get()
	im <- solve(data)
	
	## cache the inversed matrix 
	x$setinversematrix(im)
	im
}
