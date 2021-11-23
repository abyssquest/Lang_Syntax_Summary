# Vector 자료구조
# R의 기본 데이터 구조
# 1차원 배열 형태
# 접근 : [index] : 1부터 시작
# 동일한 타입의 데이터만 저장 가능
# 벡터 데이터 생성 함수 : c(), seq(), rep()
# 벡터 데이터 처리 함수 : union(), setdiff(), intersect()


# 1. Vector 자료 구조
##  - C() 함수 이용 벡터 객체 생성
x <- c(1, 2, 3, 4, 5) # combine 함수
x

x <- c(1:20) # 콜론 : 범위
x

y <- 10:20
y

##  - seq() 함수 이용 벡터 객체 생성
x <- seq(1, 10, 2) # sequence : 인자(시작, 종료, 증감)
x

##  - rep() 함수 이용 벡터 객체 생성
help(rep)
example(rep)
rep(1:3, 3) # replicate : 인자(대상, 반복수)
# 1 2 3 1 2 3 1 2 3
rep(1:3, each=3)
# 1 1 1 2 2 2 3 3 3

# union(), setdiff(), intersect() 함수 이용
x <- c(1, 3, 5, 7)
y <- c(3, 5)
x; y

union(x, y)     # 합집합(x+y)
setdiff(x, y)   # 차집합(x-y)
intersect(x, y) # 교집합(x^y)

# 숫자형, 문자형, 논리형 벡터 생성
v1 <- c(33, -5, 20:23, 12, -2:3)
v1
v2 <- c(33, -5, 20:23, 12, "4") # 데이터를 모두 문자형으로 변환.
v2


# 한 줄에 명령문 중복 사용
v1; mode(v1)

# 벡터에 컬럼명 지정
age <- c(20, 25, 30)
age
names(age) <- c("홍길동", "이순신", "강감찬")
age
age <- NULL # age 변수 데이터 삭제

# 벡터 자료 참조하기
a <- c(1:50)
a[10] # index : 1부터 시작.
a[c(10:45)] # 10에서 45사이의 벡터 원소 출력
a[10:(length(a)-5)] # 10~45

# 잘못된 벡터 첨자 사용 예
a[1,2] # Error in a[1, 2] : incorrect number of dimensions
a[1:2] # a[c(1:2)], a[c(1,2)]

# c() 함수에서 콤마 사용 예
v1 <- c(33, -5, 20:23, 12, -2:3)
v1
v1[1]
v1[c(2,4)]
v1[c(3:5)]; v1[3:5]
v1[c(4, 5:8, 9)]

# 음수 값으로 첨자 지정 예
v1[-1] # 해당 위치의 원소를 제외한 값 출력
v1[-c(2,4)]
v1[-c(2:5)]
v1[-c(2,5:10,1)]

# 패키지 설치와 메모리 로딩
install.packages("RSADBE") # 패키지(데이터) 설치
library(RSADBE)            # 패키지를 메모리에 로드

data("Severity_Counts")    # RSADBE 패키지에서 제공되는 데이터 셋 가져오기.
str(Severity_Counts)

# 패키지에서 제공되는 벡터데이터 셋 보기
Severity_Counts