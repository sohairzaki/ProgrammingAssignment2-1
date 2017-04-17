#setting my work directory

setwd("/DataScienceCourse_Coursera/RProgramming_Course_Course2/RProgramming_Course2_Week3")
#set the value of the matrix

#get the value of the matrix

#set the value of the inverse

#get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


    
    cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if (!is.null(m)) {
            message("getting cached data")
            return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
    }
    
    #unit testing
    A <- matrix(c(3,4,5,6),2,2)
    B <- makeCacheMatrix(A)
    cacheSolve(B)
    
    #unit testing 2
    A<- matrix (c(4,2,7,6),2,2)
    B<- makeCacheMatrix (A)
    cacheSolve (B)
    
    
    