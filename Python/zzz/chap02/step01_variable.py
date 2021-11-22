'''
1. 값이 메모리에 객체(Object)로 저장
2. 객체의 주소가 변수에 저장

3. 새로운 값을 변수에 저장할 때
3-1. 새로운 값을 객체로 생성
3-2. 새로운 객체의 주소가 변수에 저장
'''

var1 = "Hello Python" # 문자열이 담긴 객체의 주소가 변수에 대입
print(var1) # 변수의 메모리 주소에 담긴 값이 출력
print(id(var1)) # 변수의 메모리 주소가 출력
print(type(var1)) # 변수에 담긴 객체의 타입이 출력

var1 = 100 # 새로운 값이 담긴 객체의 메모리 주소가 변수에 대입
print(var1)
print(id(var1)) # 같은 변수명이더라도 담긴 메모리 주소가 다르다
print(type(var1))

var2 = 100
print(var2)
print(id(var2))
print(type(var2))

var1 = 100
print(var1)
print(id(var1))
print(type(var2))