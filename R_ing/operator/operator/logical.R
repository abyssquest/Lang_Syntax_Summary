# 논리 연산자
num1 <- 100 # 피연산자1
num2 <- 20  # 피연산자2

logical <- num1 >= 50 & num2 <= 10
logical

logical <- num1 >= 50 | num2 <= 10
logical

x <- TRUE; y <- FALSE
xor(x, y)
x <- TRUE; y <- TRUE
xor(x, y)

logical <- num1 >= 50
logical

logical <- !(num1 >= 50)
logical