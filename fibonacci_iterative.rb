DEF FIB(n)
  SET fib_0 to 0
  SET fib_1 to 1
  FOR each value from 0 to one less than n
    SET temp to fib_0
    ASSIGN fib_1 to fib_0 COMPUTE temp + fib_1,
      ASSIGN to fib_1
  END FOR
  RETURN fib_1
END DEF
