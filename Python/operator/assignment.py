# 할당 연산자
# 왼쪽 변수에 오른쪽 값을 가지는 객체의 메모리 주소를 저장
a = 72
b = 36
print(a)
print(b)

# 교환 연산 - 다항 할당이 가능하기 때문에 가능
a, b = b, a
print(a)
print(b)

# 다른 연산자와의 결합한 할당연산자
a += 5
print(a)
a -= 5
print(a)
a *= 5
print(a)
a /= 5
print(a)