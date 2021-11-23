# Array : 동일 데이터 타입을 갖는 다차원 배열
# 3차원 배열 객체 생성
# R에서 활용도 낮음
# d <- c(1:12) # 12개 벡터 객체 생성
# arr <- array(d, c(3,2,2)) # 3행2열 구조 2개
# arr #1~6(1면), 7~12(2면) -> 3차원 배열 객체


## 3. Array 자료 구조

# 3차원 배열 객체 생성하기
vec <- c(1:12) # 12개 벡터 객체 생성
arr <- array(vec, c(3,2,2)) # 3행2열2면 -> 3차원 배열 객체 생성
arr

# 3차원 배열 객체 자료 조회
arr[,,1] # 1면
arr[,,2] # 2면
arr[2, ,1] # 1면 2행
arr[1,2,2] # 2면1행2열

# 배열 자료형과 자료 구조
mode(arr); class(arr) # "numeric", "array"


# 데이터 셋 가져오기
library(RSADBE)
data(Bug_Metrics_Software)
str(Bug_Metrics_Software)

# 데이터 셋 자료보기
Bug_Metrics_Software