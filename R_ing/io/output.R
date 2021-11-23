# 2. 데이터 저장하기
# 2-1. 화면(콘솔) 출력
#  1) cat() 함수
x <- 10
y <- 20
z <- x * y
cat("x * y의 결과는 ", z, "입니다.\n") # \n : 줄바꿈.

#  2) print() 함수
print(z) # 변수 또는 수식만 가능
print(z * 10)
z
print("x * y = ", z) # error


# 2-2. 파일에 데이터 저장
#  1) sink() 함수를 이용한 파일 저장
getwd()
setwd("C:/DevSource/bigdata_workspaces/R_Rstudio/output")

library(RSADBE)
data("Severity_Counts") # Severity_Counts 데이터 셋 가져오기
Severity_Counts

sink("severity.txt") # 저장할 파일 open
severity <- Severity_Counts # 데이터 셋을 변수에 저장.
severity  # 콘솔에 출력되지 않고, 파일에 저장
sink()    # 오픈된 파일 close

#  2) write.table() 함수 이용 파일 저장
# 탐색기를 이용하여 데이터 가져오기
studenttx <- read.xlsx(file.choose(), sheetIndex = 1, encoding = "UTF-8")
studenttx

# 기본 속성으로 저장 - 행이름과 따옴표가 붙는다.
write.table(studenttx, "stdt.txt")

# 'row.names=F' 속성을 이용하여 행이름 제거하여 저장한다.
write.table(studenttx, "stdt2.txt", row.names=F)

# 'quote=F' 속성을 이용하여 따옴표를 제거하여 저장한다.
write.table(studenttx, "stdt3.txt", quote=F)

# 행이름 제거 + 따옴표 제거
write.table(studenttx, "stdt4.txt", row.names=F, quote=F)


html_cont # 데이터프레임 확인
write.table(html_cont, "GNP_United States.txt", row.names = F)

GNP_US <- read.table("GNP_United States.txt", sep = "", header = T)
GNP_US
str(GNP_US)

#  3) write.xlsx() 함수 이용 파일 저장 - 엑셀 파일로 저장
library(rJava)
library(xlsx) # excel data 입출력 함수 제공

st.df <- read.xlsx(file.choose(), sheetIndex = 1, encoding = "UTF-8")
st.df

write.xlsx(st.df, "studenttx.xlsx") # excel 형식으로 저장.

#  4) write.csv() 함수 이용 파일 저장
#     - data.frame 형식의 데이터를 csv 형식으로 저장.

write.csv(st.df, "stdf.csv", row.names = F, quote = F)