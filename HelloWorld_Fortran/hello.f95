program hello
    ! This program prints 'Hello, World' and sums two numbers given by the user
    implicit none
    
    ! Constants declarations
    real, parameter :: g = 9.81
    real, parameter :: pi = 3.1415927
    
    ! Variables declarations
    real :: a, b, result
    character (len = 25) :: greetings

    ! Arrays declaration
    real, dimension(4) :: first_array, second_array
    real, dimension(10) :: aa, bb

    ! Interface for any size array functions
    ! Interfaces must be located after var declarations and before Executable statements
    interface 
        ! These interfaces are needed to declare functions that will 
        ! accept array with any size
        subroutine fillArray (a)
            real, dimension(:), intent (out) :: a 
            integer :: i         
        end subroutine fillArray      

        subroutine printArray (a)
            real, dimension(:) :: a 
            integer :: i         
        end subroutine printArray   
    end interface 


    ! This is a comment line; it is ignored by the compiler
    greetings = "Hello, World! Fuck You!"
    print *, greetings(1:13) ! Just characters from 1 to 13 are printed
    
    ! Executable statements

    ! print *, 'Please enter the number A: '
    ! read(*,*) a
    a = 12
    b = 17
    result = a + b
    print *, 'A + B is ', result

    ! Constants
    print *, 'Gravity acceleration is ', g
    print *, 'PI number is ', pi

    ! Arrays
    call fillArray (first_array)
    print *, 'First Array: '
    call printArray (first_array)

    second_array = (/1.5, 2.5, 3.5, 4.5/)
    print *, 'Second Array: '
    call printArray (second_array)

    ! Format is: (begin:end) or (begin:) 
    aa(1:7) = 5.0
    aa(8:) = 0.0
    print *, 'aa: '
    call printArray (aa)

    ! Format is: (begin:end:stride)
    bb(2:10:2) = 3.9
    bb(1:9:2) = 2.5
    print *, 'bb: '
    call printArray (bb)

    call dynamicArray

end program hello

subroutine fillArray (a)      
    implicit none
    real, dimension (:), intent (out) :: a
    ! local variables     
    integer :: i, arraySize
    arraySize = size(a)
    do i = 1, arraySize            
        a(i) = i * 2.0       
    end do  
       
end subroutine fillArray 

subroutine printArray(a)
    implicit none
    real, dimension (:) :: a  
    ! Local Variables
    integer :: i, arraySize
    arraySize = size(a)
    do i = 1, arraySize
       Print *, a(i)
    end do
    
 end subroutine printArray

 ! Dynamic array example
 ! All dynamic arrays must be allocated and deacllocated
 subroutine dynamicArray

    real, dimension(:,:), allocatable :: darray
    integer :: s1, s2
    integer(2) :: i, j ! 2 Byte integers

    print *, "Enter the size of the array:"
    read *, s1, s2

    ! allocate memory      
   allocate ( darray(s1,s2) )      
   
   do i = 1, s1           
      do j = 1, s2                
         darray(i,j) = i*j               
         print*, "darray(",i,",",j,") = ", darray(i,j)           
      end do      
   end do      
   
   deallocate (darray) 
end subroutine dynamicArray
  