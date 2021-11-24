## 2. 주요 내장 함수

# 행 단위, 컬럼 단위 합계와 평균 구하기.

# 단계1 : 데이터 셋 불러오기
library(RSADBE)
data(Bug_Metrics_Software)
class(Bug_Metrics_Software)

Bug_Metrics_Software[,,1]
Bug_Metrics_Software[,,2]

# 단계2 : 소프트웨어 발표 전 행 단위 합계와 평균 구하기.
rowSums(Bug_Metrics_Software[,,1])
rowMeans(Bug_Metrics_Software[,,1])

# 단계3 : 소프트웨어 발표 전의 열 단위 합계와 평균 구하기.
colSums(Bug_Metrics_Software[,,1])
colMeans(Bug_Metrics_Software[,,1])

# 기술 통계량 관련 내장 함수 사용 예
seq(-2, 2, by = .2) # 0.2씩 증가
vec <- 1:10
vec

min(vec)
max(vec)
range(vec)
mean(vec)
median(vec)
sum(vec)
sd(vec) # 표준편차 구하기.
table(vec)    # 빈도수

# 난수와 확률 분포 관계
# 단계1 : 정규분포(연속형)의 난수 생성
n <- 1000
r <- rnorm(n, mean = 0, sd = 1)
hist(r) # 대칭성

# 단계2 : 균등분포(연속형)의 난수 생성
n <- 1000
r2 <- runif(n, min = 0, max = 1) # 0 < r2 < 1
hist(r2)


# 단계3 : 이항분포(이산형) 난수 생성
n <- 20
rbinom(n, 1, prob = 1/2)
rbinom(n, 2, 0.5)
rbinom(n, 10, 0.5)
n <- 1000
rbinom(n, 5, prob = 1/6)

# 단계4 : 종자값(seed)으로 동일한 난수 생성.
rnorm(5, mean=0, sd=1)

set.seed(123)
rnorm(5, mean=0, sd=1)

set.seed(345)
rnorm(5, mean=0, sd=1)

# 수학 관련 내장함수 사용 예
vec <- 1:10
prod(vec) # 벡터 원소들의 곱
factorial(5)
abs(-5)
sqrt(16)

log(10) # 10의 자연로그(밑수가 e)
log10(10) # 10의 일반로그(밑수가 10)

# 집합연산 관련 내장 함수 사용 예
x <- c(1, 3, 5, 7, 9)
y <- c(3, 7, 8)

union(x, y) # 합집합
setequal(x, y) # 동일성 체크
intersect (x, y) # 집합x와y의교집합
setdiff(x, y)# x의모든원소중y에는없는x와y의차집합
