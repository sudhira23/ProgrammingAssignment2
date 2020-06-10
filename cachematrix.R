## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function creates a matrix object to cache the inverse
makeCacheMatrix <- function(x = matrix()) {
  ##Step to initialize the inverse
  inver <- NULL
  set <- function(y) {
    x <<- y
    inver <<- NULL
  }
  ##Step to get the matrix
  get <- function() {x}
  
  ##Step to set the inverse of the matrix
  setInverse <- function(inverse) {inver <<- inverse}
  
  ##Next is to get the inverse of the matrix
  getInverse <- function() {inver}
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

##Function to compute the inverse of the above matrix, 
##and if the matrix already exists, bring it up from cache
cacheSolve <- function(x, ...) {
        
  ## Return a matrix that is the inverse of 'x'
  
  inver <- x$getInverse()
  if(!is.null(inver)) {
    message("displaying cached data")
    return (inver)
  }
  matr <- x$get()
  inver <- solve(matr, ...)
  x$setInverse(inver)
  inver
}

