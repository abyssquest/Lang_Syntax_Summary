# 대입연산자
# 왼쪽 변수에 오른쪽 값을 가지는 객체의 메모리 주소를 저장
a = 3; b = 2;
print(a)
print(b)

# 산술연산자와 결합한 대입연산자
a += b
print(a)
a -= b
print(a)
a *= b
print(a)
a /= b
print(a)
a **= b
print(a)
a //= b
print(a)
a %= b
print(a)

# 교환 할당 - 다항 할당이 가능하기 때문에 가능
a, b = b, a
print(a)
print(b)

# 패킹 할당
c = [ 1, 2, 3, 4, 5]

a, *b = c
print(a)
print(b)

*a, b = c
print(a)
print(b)