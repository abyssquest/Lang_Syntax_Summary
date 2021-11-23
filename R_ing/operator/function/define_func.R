## 1. 사용자 정의 함수

# 함수 정의 형식
# 변수 <- function([매개변수]){
#            함수의 실행문             
#         }

# 함수 호출
#  - 변수([매개변수])


# 매개변수가 없는 함수 예
f1 <- function(){
          cat("매개변수가 없는 함수")
      }

f1() # 함수 호출 방법 


# 매개변수가 있는 함수 예
f2 <- function(x){
         cat("x의 값 = ", x, "\n")
         print(x)
      }

f2(10) # 실인수
f2(c(1:10)) # 벡터


# 리턴값이 있는 함수 예
f3 <- function(x, y){
          add <- x + y # 덧셈
          return (add)   # 결과 반환
      }

add <- f3(10, 30)
add

# 기술 통계량을 계산하는 함수 정의 
# 파일 불러오기
getwd()
setwd("C:/DevSource/bigdata_workspaces/R_Rstudio/data")

# read.~() 은 테이블로 반환, 테이블은 데이터 프레임, 데이터 프레임은 matrix
test <- read.csv("test.csv", header = T)
head(test)

# A 컬럼 요약통계량, 빈도수 구하기.
summary(test) # 요약통계량.
table(test$A) # A 변수 대상 빈도 수.
max(test$A)   # 최대값
min(test$A)   # 최소값

length(test)  # 5 : column의 개수

# 각 컬럼 단위 요약통계량과 빈도 수 구하기.
data_pro <- function(x){
  
  for(idx in 1:length(x)){
    cat(idx, '번째 컬럼의 빈도분석 결과')
    print(table(x[idx]))
    cat('\n')
  }
  
  for(idx in 1:length(x)){
    f <- table(x[idx])
    cat(idx, '번째 컬럼의 최대값/최소값 \n')
    cat("max=", max(f), "min=", min(f), '\n')
  }
}

data_pro(test) # 함수 호출


# 분산과 표준편차를 구하는 함수 정의
z <- c(7, 5, 12, 9, 15, 6) # x 변량 생성

var_sd <- function(x){
  var <- sum((x-mean(x))^2) / (length(x)-1) # 표본분산
  sd <- sqrt(var)
  cat('표본분산:', var, '\n')
  cat('표본 표준편차:', sd, '\n')
}

var_sd(z)

# 결측치(NA) 데이터 처리
data <- c(10, 20, 5, 4, 40, 7, NA, 6, 3, NA, 2, NA)
data

mean(data) # NA
mean(data, na.rm = T) # 10.77778

# 구구단 출력 함수
gugudan <- function(i, j){
  for(x in i){
    cat("== ", x, "단 ==\n")
    
    for(y in j){
      cat(x, "*", y, "=", x*y, "\n")
    }
    
    cat("\n")
  }
}

i <- c(2:9) # 단 수 지정
j <- c(1:9) # 단 수와 곱해지는 수 지정


gugudan(i, j)

# 결측치 데이터 처리 함수
na <- function(x){
  # 1차 : NA 제거 
  print(x)
  print(mean(x, na.rm = T))
  
  # 2차 : NA를 0으로 대체
  data <- ifelse(!is.na(x), x, 0) # NA이면 0으로 대체.
  print(data)
  print(mean(data))
  
  # 3차 : NA를 평균으로 대체
  data2 <- ifelse(!is.na(x), x, round(mean(x, na.rm = T), 2)) # 평균으로 대체
  print(data2)
  print(mean(data2))
}

na(data) # 함수 호출
# 결측치를 무조건 제거하면 정확한 통계량을 얻을 수 없으며, 
# 데이터가 손실될 수 있다.