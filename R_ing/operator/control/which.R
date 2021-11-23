# 4) which문
#   - which()의 괄호내의 조건에 해당하는 위치(인덱스)를 출력한다.
#   - 벡터에서 사용 -> index값 리턴.

name <- c("kim", "lee", "choi", "park")
which(name == "choi") # 3(index)

# 데이터프레임에서 사용
no <- c(1:5)
name <- c("홍길동", "이순신", "강감찬", "유관순", "김유신")
score <- c(85, 78, 89, 90, 74)

exam <- data.frame(학번=no, 이름=name, 성적=score)
exam

sel <- which(exam$이름=="유관순") # 4

exam[sel,]