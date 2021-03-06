## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
##set value of matrix
  i<-NULL
  set<-function(y){
    x<<-y
    i<<-NULL
  }
##get the value of the matrix
get<-function()x

##set the value of the inverse
setinverse<-function(inverse) i<<-inverse

##get the value of the inverse
getinverse<-function()i
list(ser=set,get=get,
     setinverse=setinverse,
     getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i<-x$getinverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data<-x$get()
  i<-solve(data,...) ##retrieving the inverse from the cache
  x$setinverse(i)
  i
}

