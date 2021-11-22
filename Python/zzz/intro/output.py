# print() : 출력 함수

a = '안녕'
b = '파이썬'
print(a)
print(b)

# 구분자 옵션
print(a, b)			# 출력 - 구분자 기본값 : 공백문자
print(a, b, sep='') # 출력 - 구분자 설정 : 공백 없는 구분자
print(a, b, sep='@') # 출력 - 구분자 설정 : @
print(a, b, sep='#') # 출력 - 구분자 설정 : #

# 종료 구분자 옵션 (기본값 : \n)
print(a, end=',') # 출력 - ,설정
print(b)

print(a, end='&') # 출력 - &설정
print(b)

# 포맷팅 설정
print("{}월 {}일 집에 돌아가는 버스를 끊었다.".format(10,31))
print("%s월 %s일 집에 돌아가는 버스를 끊었다."%(10,31))
