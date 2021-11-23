# Matrix 자료구조
# 동일 데이터 타입을 갖는 2차원 배열
# 행렬(matrix) 객체
# Matrix 데이터 생성 함수
	# rbind() : 행묶음
	# cbind() : 컬럼 묶음
# Matrix 데이터 처리 함수
	# apply() : 함수적용

# 2. Matrix 자료 구조

# 벡터 이용 행렬 객체 생성
m <- matrix(c(1:5))
m  # 5행 1열

# 벡터의 열 우선으로 행렬 객체 생성
?matrix
m <- matrix(c(1:10), nrow = 2) # 2행 5열
m

# 행과 열의 수가 일치하지 않는 경우 예
m <- matrix(c(1:11), nrow = 2)
m

# 벡터의 행 우선으로 행렬 객체 생성
m <- matrix(c(1:10), nrow = 2, byrow = T) # 행 우선
m

m <- matrix(c(1:10), byrow = T) # 주의 - 여전히 10행 1열
m # nrow/ncol 값 주어지지 않으면, default one-column으로 동작. 즉 byrow 속성은 적용되지 않음.

m <- matrix(c(1:10), ncol = 10) # 1행 10열
m

?matrix

# 행 묶음으로 행렬 객체 생성
x1 <- c(5, 40, 50:52)
x2 <- c(30, 5, 6:8)
mr <- rbind(x1, x2)
mr

# 열 묶음으로 행렬 객체 생성
mc <- cbind(x1, x2)
mc

args(matrix)
# 2행으로 행렬 객체 생성
m3 <- matrix(10:19, 2) # 10개 데이터를 2행으로 생성
m3

# 자료와 객체 type 보기
mode(m3); class(m3) # numeric, matrix


# 행렬 객체에 첨자로 접근
m3[1,]   # 1행 전체
m3[,5]   # 5열 전체
m3[2,3]  # 2행 3열의 데이터 1개 -> 15
m3[1,c(2:5)] # 1행에서 2~5열 데이터 4개
m3[1,c(2,5)] # 1행에서 2열, 5열 데이터 2개

# 3행 3열로 행렬 객체 생성
x <- matrix(c(1:9), nrow = 3, ncol = 3) # 3행3열 matrix 객체
x

# 자료의 개수 보기
length(x) # 데이터 개수
ncol(x); nrow(x) # 열 / 행 수


# apply() 함수 적용
apply(x, 1, max) # 행 단위 최대값
apply(x, 1, min) # 행 단위 최소값
apply(x, 2, mean) # 열 단위 평균값

# 사용자 정의 적용
f <- function(x){ # x 매개변수
  x * c(1, 2, 3)
}

# 행 우선 순서로 사용자 정의 함수 적용
result <- apply(x, 1, f)
result

# 열 우선 순서로 사용자 정의 함수 적용
result <- apply(x, 2, f)
result

# 행렬 객체에 컬럼명 지정하기
colnames(x) <- c('one', 'two', 'three')
x