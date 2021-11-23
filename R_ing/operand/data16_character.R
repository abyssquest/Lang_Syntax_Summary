




## 6. 문자열 처리

# 문자열 추출하기
install.packages("stringr") # 패키지 설치
library(stringr) # 메모리 로딩

# 형식) str_extract('문자열', '정규표현식')
str_extract("홍길동35이순신45강감찬50","[0-9]{2}")
str_extract_all("홍길동35이순신45강감찬50","[0-9]{2}")


# 반복수를 지정하여 영문자 추출
string <- 'hongkildong105lee1002you25강감찬2005'
str_extract_all(string, '[a-z]{3}')
str_extract_all(string, '[a-z]{3,}')
str_extract_all(string, '[a-z]{3,5}')

# 특정 단어 추출
str_extract_all(string, '유관순')
str_extract_all(string, '강감찬')


# 한글, 영문자, 숫자 추출하기
str_extract_all(string, 'hong')
str_extract_all(string, '25')
str_extract_all(string, '[가-힣]{3}') # 한글 검색
str_extract_all(string, '[a-z]{3}') # 소문자 검색
str_extract_all(string, '[A-Z]{3}') # 대문자 검색
str_extract_all(string, '[0-9]{4}') # 숫자 검색


# 한글, 영문자, 숫자를 제외한 나머지 추출하기
str_extract_all(string, '[^a-z]')
str_extract_all(string, '[^a-z]{4}')
str_extract_all(string, '[^가-힣]{5}')
str_extract_all(string, '[^0-9]{3}')


# 주민등록번호 검사하기
jumin <- '123456-3234567'
str_extract_all(jumin, '[0-9]{6}-[1234][0-9]{6}')
str_extract_all(jumin, '\\d{6}-[1234]\\d{6}')

# 지정된 길이의 단어 추출하기
name <- '홍길동1234,이순신5678,강감찬1012'
str_extract_all(name, '\\w{7,}') # '\\w'(소문자) : 한글/영문자/숫자 포함. 즉, 특수문자 제외. '\\W'(대문자) : 특수문자 선택.
str_extract_all(name, '\\W')

# 문자열 위치(index) 구하기
string <- 'hongkd105leess1002you25강감찬2005'
str_locate(string, '강감찬')

# 문자열 길이 구하기
string <- 'hongkild105lee1002you25강감찬2005'
len <- str_length(string) # 30
len

# 부분 문자열
string_sub <- str_sub(string, 1, len-7)
string_sub

string_sub <- str_sub(string, 1, 23)
string_sub

# 대문자, 소문자 변경하기
str_to_upper(string_sub)
str_to_lower(string_sub)

# 문자열 교체하기
string_rep <- str_replace(string_sub, 'hongkild105', '홍길동35,')
string_rep <- str_replace(string_rep, 'lee1002', '이순신45,')
string_rep <- str_replace(string_rep, 'you25', '유관순25,')
string_rep


# 문자열 결합하기
string_c <- str_c(string_rep, '강감찬55')
string_c


# 문자열 분리하기
string_sp <- str_split(string_c, ',')
string_sp

# 문자열 합치기
string_vec <- c('홍길동35', '이순신45', '유관순25', '강감찬55')
string_vec

string_join <- paste(string_vec, collapse = ',')
string_join