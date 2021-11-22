# List : 서로 다른 데이터 구조(Vector, Data Frame, Array, List) 중첩
# 키값 조합
# 함수 내에서 여러 값을 하나의 키로 묶어서 반환할 경우 유용함

x <- list(name="홍길동", age = 35,address="한양", gender="남자", htype="아파트")
x

# key를 이용하여 value에 접근하기
member <- list (name=c("홍길동", "유관순"), age=c(35, 25),
		address=c("서울", "경기도"), gender=c("남자", "여자"),
		htype=c("아파트", "오피스텔"))
member

# key를 이용하여 value에 접근하기
member$name
member$name[1]
member$name[2]

member$age <- 45  # 데이터 수정
member$age

member$id <- c("hong", "you") # 데이터 추가

member$age <- NULL   # 데이터 제거

member

# 1개 값을 갖는 리스트 객체 생성
list <- list("lee", "이순신", 35)
list
#[[1]]     ---------> key(생략) [[n]]
#[1] "lee" ---------> value[n]

#[[2]]
#[1] "이순신"

#[[3]]
#[1] 35


# 1개 이상의 값을 갖는 리스트 객체 생성
num <- list(c(1:5), c(6:10))
num

# 리스트 자료구조 -> 벡터 구조로 변경하기
unlist <- unlist(num)
unlist

# 리스트 객체에 함수 적용하기
# list data 처리 함수
a <- list(c(1:5))  # 리스트 객체 생성
b <- list(c(6:10)) # 리스트 객체 생성
a; b

c(a,b)

c <- lapply(c(a,b), max) # list로 결과 반환
c
mode(c); class(c)  # "list" "list"

# 리스트 형식을 벡터 형식으로 반환하기
c <- sapply(c(a,b), max)
c
mode(c); class(c) # "numeric" "integer"

# 다차원 리스트 객체 생성
multi_list <- list(list(1, 2, 3), list(10, 20, 30), list(100,200,300))
multi_list
multi_list <- list(c1=list(1, 2, 3), c2=list(10, 20, 30), c3=list(100,200,300))
multi_list

multi_list$c1
multi_list$c2
multi_list$c3

# 다차원 리스트를 열 단위로 바인딩
d <- do.call(cbind, multi_list)
d
class(d) # "matrix"