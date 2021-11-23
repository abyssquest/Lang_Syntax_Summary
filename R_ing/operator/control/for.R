# 1) 반복문 - for(변수 in 값){ 표현식 }

i <- c(1:10)
i

d <- numeric() # 빈 vector(숫자)

for(n in i){ # 10회 반복
  print(n*10)
  print(n)
  d[n] <- n*2
}

d

for(n in i){
  if(n %% 2 != 0){
    print(n) # %% : 나머지 값 - 홀수만 출력.
  }
}

for(n in i){
  if(n %% 2 == 0){
    next # 다음 문장 skip -> 반복문 계속(자바의 continue 키워드와 동일.)
  }else{
    print(n) # %% : 나머지 값 - 홀수만 출력.
  }
}

# 벡터 데이터 사용 예
score <- c(85, 95, 98)
name <- c("홍길동", "이순신", "강감찬")

i <- 1 # 첨자로 사용되는 변수
for(s in score){
  cat(name[i], " -> ", s, "\n")
  i <- i+1
}