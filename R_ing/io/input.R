# 1. 데이터 불러오기

## 1-1. 키보드 입력

# 키보드로 숫자 입력하기
num <- scan()
num

# 합계 구하기
sum(num)

# 키보드로 문자 입력하기
name <- scan(what = character())
name

# 편집기 이용 데이터프레임 만들기
df <- data.frame() # 빈 데이터프레임 생성
df <- edit(df)
df

## 1-2. 로컬 파일 가져오기

# 1) read.table() 함수 이용
#   - 컬럼명이 없는 파일 불러오기
getwd()
setwd("C:/DevSource/bigdata_workspaces/R_Rstudio/data")

student <- read.table(file="student.txt")
student
mode(student); class(student)

names(student) <- c('번호', '이름', '키', '몸무게')
student

#   - 컬럼명이 있는 파일 불러오기
student1 <- read.table(file="student1.txt", header = T)
student1

#   - 탐색기를 통해서 파일 선택하기
student1 <- read.table(file.choose(), header = T)
student1

#   - 구분자가 있는 경우(세미콜론, 탭)
student2 <- read.table(file="student2.txt", sep = ";", header = T)
student2

#   - 결측치를 처리하여 파일 불러오기
student3 <- read.table(file="student3.txt", header = T, na.strings = "-") # 문자열 -> NA처리
student3

#   - csv 파일 형식 불러오기
student4 <- read.csv(file="student4.txt", na.strings = "-")
student4

# read.xlsx() 함수 이용 - 엑셀데이터 읽어오기
# 패키지 설치와 java 실행 환경 설정
install.packages("rJava") # rJava 패키지 설치
install.packages("xlsx")  # xlsx 패키지 설치
Sys.setenv(JAVA_HOME='C:/Program Files/Java/jre1.8.0_311')

# 관련 패키지 메모리 로드
library(rJava)
library(xlsx)

# 엑셀 파일 가져오기
studentex <- read.xlsx(file.choose(), sheetIndex = 1, encoding = "UTF-8")
studentex


## 1-3. 인터넷에서 파일 가져오기

# 단계1 : 세계 GDP 순위 데이터 가져오기
GDP_ranking <- read.csv("https://databank.worldbank.org/data/download/GDP.csv", encoding = "UTF-8")
GDP_ranking
head(GDP_ranking, 20)
dim(GDP_ranking)

# 데이터를 가공하기 위해 불필요한 행과 열을 제거한다.
GDP_ranking2 <- GDP_ranking[-c(1:4), c(1,2,4,5)]
head(GDP_ranking2)

# 상위 16개 국가 선별한다.
GDP_ranking16 <- head(GDP_ranking2, 16) # 상위 16개 국가
GDP_ranking16

# 데이터프레임을 구성하는 4개의 열에 대한 이름을 지정한다.
names(GDP_ranking16) <- c('Code', 'Ranking', 'Nation', 'GDP')
GDP_ranking16
dim(GDP_ranking16)

# 단계2 : 세계 GDP 상위 16위 국가 막대 차트 시각화
gdp <- GDP_ranking16$GDP
nation <- GDP_ranking16$Nation
gdp

num_gdp <- as.numeric(str_replace_all(gdp, ',', ''))
num_gdp

GDP_ranking16$GDP <- num_gdp


# 막대차트 시각화
barplot(GDP_ranking16$GDP, col = rainbow(16),
        xlab = '국가(nation)', ylab='단위(달러)', names.arg=nation)

# 1,000단위 축소
num_gdp2 <- num_gdp / 1000
GDP_ranking16$GDP2 <- num_gdp2
barplot(GDP_ranking16$GDP2, col = rainbow(16),
        main = "2020년도 GDP 세계 16위 국가",
        xlab = '국가(nation)', ylab='단위(천달러)', names.arg=nation)

GDP_ranking16

    ## 1-4. 웹문서 가져오기

# 2010년 ~ 2015년도 미국의 주별 1인당 소득 자료 가져오기.
# "https://ssti.org/blog/useful-stats-capita-personal-income-state-2010-2015"

# 단계1 : XML / httr 패키지 설치
install.packages("XML")
install.packages("httr")

library(XML)
library(httr)

# 단계2 : 미국의 주별 1인당 소득 자료 가져오기.
url <- "https://ssti.org/blog/useful-stats-capita-personal-income-state-2010-2015"

get_url <- GET(url) # httr 제공
get_url
get_url$content # 16진수
rawToChar(get_url$content) # html 태그 변환

html_cont <- readHTMLTable(rawToChar(get_url$content), stringsAsFactors=F)
str(html_cont) # list
html_cont

html_cont <- as.data.frame(html_cont) # data.frame형 변환
str(html_cont)
head(html_cont)

# 단계4 : 컬럼명을 수정한 후 뒷부분 6개 관측치 보기
names(html_cont) <- c("State", "y2010", "y2011", "y2012", "y2013", "y2014", "y2015")
tail(html_cont)