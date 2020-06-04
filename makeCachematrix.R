makeCacheMatrix <- function(x = matrix()) {  ## function declaration
  inv <- NULL ##initially no inverse is calculated
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix  ##Set inverse by solvematrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
