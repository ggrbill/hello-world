program hello
  ! Type declarations
  real :: a, b, result

  ! This is a comment line; it is ignored by the compiler
  print *, 'Hello, World!'
  
  ! Executable statements
  print *, 'Please enter the number A: '
  read(*,*) a
  print *, 'Please enter the number B: '
  read(*,*) b
  result = a + b
  print *, 'A + B is ', result
end program hello
