## This is the solution of programming assignment 2

## First define 4 functions to get and set values

makeCacheMatrix <- function(x = matrix()) {
		m<- NULL        
        set <- function(y){
                x<<- y
                m<<- NULL
        }
        get<- function()x
        setinverse <- function (inverse) m<<-inverse
        getinverse <- function()m
        list(set = set, get= get, setinverse= setinverse, getinverse= getinverse)
}


## this is function to extract matrix and function definition from the makeCacheMatrix 

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
