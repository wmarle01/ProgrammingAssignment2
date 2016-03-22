## Put comments here that give an overall description of what your
## functions do

## Creates a matrix and stores a cached value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


## Calculates the inverse of makeCacheMatrix

cacheSolve <- function(x, ...) {
        m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
