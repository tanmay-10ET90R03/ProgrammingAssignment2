cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  inver <- x$getInverse() ## Checks whether the inverse is already calculated or not
  
  if(!is.null(inver)){ 
    message("getting cached data") 
    return(inver)
  }
  ##If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache
  
  data <- x$get()
  inver <- solve(data)  ## New data to inver
  x$setInverse(inver)
  inver      
}
