# 1) if()
x <- 10
y <- 5
z <- x * y
z

#if(조건식){ 산술/비교/논리 연산자 
#    실행문1 <- 참
#}else{
#    실행문1 <- 거짓
#}

if(x*y > 40){ # 산술 > 비교 > 논리
  cat("x*y의 결과는 40이상입니다.\n")  # \n :줄바꿈
  cat("x*y = ", z, '\n')
  print(z)
}else{
  cat("x*y의 결과는 40미만입니다. x*y=", z, "\n")
}


# 학점 구하기
score <- scan()
score

if(score >= 90){ # 조건식1
  result = "A학점"
}else if(score >= 80){ # 조건식1
  result = "B학점"
}else if(score >= 70){ # 조건식2
  result = "C학점"
}else if(score >= 60){ # 조건식3
  result = "D학점"
}else{
  result = "F학점"
}

cat("당신의 학점은 ", result) # 당신의 학점은?
print(result)


# 2) ifelse(조건, 참, 거짓) - 3항 연산자 기능

score <- c(78, 95, 85, 65)
score
ifelse(score >= 80, "우수", "노력")
# "노력" "우수" "우수" "노력"

# ifelse() 응용
getwd()
setwd("C:/DevSource/bigdata_workspaces/R_Rstudio/data")

excel <- read.csv("excel.csv", header = T)
excel

q1 <- excel$q1 # q1 변수값 추출 
ifelse(q1 >= 3, sqrt(q1), q1) # 3보다 큰 경우 sqrt() 함수 적용.
ifelse(q1 >= 2 & q1 <= 4, q1^2, q1)