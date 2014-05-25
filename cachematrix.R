## ------------------------------------------------------------------------------
## R Programming Course
## John Hopkins University
## May 2014
##
## Programming Assignment 2
##
## To avoid costly computational time, these functions will compute
## the inverse of a square matrix and will cache the inverse of a matrix.  Then
## either the cached version will be returned or the inverse calculation can be 
## performed.
## ------------------------------------------------------------------------------

## "This function creates a special 'matrix' object that can cache its inverse."

makeCacheMatrix <- function(x = matrix()) {
        seq1 <<- x
        mat1 <<- matrix(seq1, 3,3)
        inverseMatrix <<- solve(mat1[3,3])

}  ## end of makeCacheMatrix function.

##  ----------------------------------------------------------------------------
##  If needed, this function computes the inverse of the special 'matrix' 
##  returned by the above matrix.  If the inverse has already been calculated and
##  the matrix has not changed, then this function will retrieve the inverse from
##  the cache and display a message.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        testInput <- x
        
        if(testInput == seq1) {
                message("...getting cached data.")
                return(inverseMatrix)
        }
        inverseMatrix <- solve(testInput[3,3])
        inverseMatrix        
        
}  ##  end of cacheSolve function.  
