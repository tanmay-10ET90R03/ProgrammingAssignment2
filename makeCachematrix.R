makeCacheMatrix <- function(x = matrix()) {  ## function declaration
  inver <- NULL ##initially no inverse is calculated
  set <- function(y){
    x <<- y
    inver <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inver <<- solveMatrix  ##Set inverse by solvematrix
  getInverse <- function() inver
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
