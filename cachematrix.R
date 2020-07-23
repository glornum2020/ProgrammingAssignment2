## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(makeCacheMatrix, ...) {
  ## Return a matrix that is the inverse of 'x'
  invertida <- makeCacheMatrix$getinverse()
  if (!is.null(invertida)) {
          message("getting cached data")
          return(invertida)
  }
  message("computing data")
  data <- makeCacheMatrix$get()
  invertida <- solve(data, ...)
  makeCacheMatrix$setinverse(invertida)
  invertida
}
