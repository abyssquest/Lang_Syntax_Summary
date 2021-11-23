# Data Frame
# 리스트 보다 활용범위 넓다.
# DBMS의 테이블 구조와 유사 (서로 다른 데이터 타입을 갖는 컬럼)
# 가장 많이 사용하는 객체 타입
# list와 Vector 혼합형 - 컬럼 구성 : list, list 구성 : vector
# data frame 생성방법 - Vector, Matrix, txt/excel/csv 파일

# 특징
# 1. 형식) data.frame(컬럼1, 컬럼2.. 컬럼n)
# 2. 컬럼 단위로 서로 다른 자료형 가능
# 3. 모든 컬럼은 크기가 동일해야 함



## 5. Data Frame 자료 구조

# 벡터 이용 객체 생성
no  <- c(1, 2, 3)
name <- c("홍길동","이순신","강감찬")
pay <- c(150,250,300)
vemp <- data.frame(No=no,Name=name,Pay=pay)
vemp
class(vemp) # "data.frame"

# matrix 이용 객체 생성
args(matrix)
m <- matrix(c(1, "홍길동", 150,2,"이순신",250,3,"강감찬",300), 3, by=T)
m
class(m) # "matrix"

memp <- data.frame(m)
memp
class(memp) # "data.frame"

# txt 파일 이용 객체 생성
getwd()
setwd("C:/DevSource/bigdata_workspaces/R_Rstudio/data")

txtemp <- read.table('emp.txt', header = T, sep = "")
txtemp
class(txtemp) # "data.frame"


# csv 파일 이용 객체 생성(header=T)
# csv = comma seperated value : sep 설정 필요없다
csvtemp <- read.csv('emp.csv', header = T)
csvtemp; class(csvtemp)#[1] "data.frame"


# csv 파일 이용 객체 생성(header=F)
name <- c("사번", "이름", "급여")
csvtemp2 <- read.csv('emp2.csv', header = F, col.names = name)
csvtemp2


# 데이터프레임 만들기
df <- data.frame(x=c(1:5),y=seq(2,10,2),z=c('a','b','c','d','e'))
df

# 데이터프레임 컬럼명 참조
df$x

# 자료구조, 열수, 행수, 컬럼명 보기
str(df)
ncol(df)
nrow(df)
df[c(2:3)]

# 요약 통계량 보기
summary(df)

# 데이터프레임 자료에 함수 적용
apply(df[,c(1,2)], 2, sum)

# 데이터프레임의 부분 객체 만들기
x1 <- subset(df, x >= 3) # x가 3이상인 레코드 대상
x1

y1 <- subset(df, y <= 8) # y가 8이하인 레코드 대상
y1

# 두 개의 조건으로 부분 객체 만들기
xyand <- subset(df, x>=2 & y<=6)
xyand

xyor <- subset(df, x>=2 | y<=6)
xyor

# student 데이터프레임 만들기
sid <- c('A','B','C','D')
score <- c(90, 80, 70, 60)
subject <- c('컴퓨터', '국어국문', '소프트웨어', '유아교육')

student <- data.frame(sid, score, subject)
student

# 자료형과 자료구조 보기
mode(student); class(student) # list, data.frame
str(sid); str(score); str(subject)
str(student)

# 두 개 이상의 데이터프레임 병합하기
height <- data.frame(id=c(1,2), h=c(180, 175))
weight <- data.frame(id=c(1,2), w=c(80,75))
height; weight

person <- merge(height, weight, by.x="id", by.y="id")
person


# galton 데이터 셋 가져오기
#install.packages("psych") # 패키지 설치
#library(psych) # 패키지 메모리에 로드
install.packages("UsingR") # 패키지 설치
library(UsingR) # 패키지 메모리에 로드
data("galton") # galton 데이터 셋 가져오기

# galton 데이터 셋 구조 보기
str(galton)
dim(galton)
head(galton, 20)
head(galton) # default 갯수:6