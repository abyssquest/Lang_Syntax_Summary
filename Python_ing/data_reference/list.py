# 리스트
a = [ 1, 2, 3, '안녕', [ 5, 6, 7, 8] ]

# 리스트 - 인덱싱 : 0부터 시작, 음수는 뒤에서부터
print( a[0] )
print( a[4][2] )
print( a[-1][-1] )

# 리스트 - 슬라이싱 : [ 이상 : 미만 ]
print( a[0:2] )
print( a[2:] )
print( a[:2] )

# 리스트 - 더하기 연산
b = [ 5, 6, 7 ]
print( a + b )

# 리스트 - 더하기 연산
print( b * 3 )

# 리스트 관련 함수
c = [ 'h', 'i', 'h', 'e', 'l', 'l', 'o' ]
c.append('python'); print(c)
c.reverse(); print(c) # 요소 순서 반전
c.sort(); print(c) # 순차 정렬
print(c.index('i')) # 없는 요소를 찾으면 에러
c.insert(3, 'python'); print(c) # 순서, 넣으려는 요소
c.remove('l'); print(c) # 값을 가지고 있으면 첫번째 값을 제거
c.pop() # 순서를 꺼내고 리스트에서 삭제 # 순서 넣지 않으면 마지막 순서
c.pop(3)
print(c.count('h')) # 요소의 개수 세기
c.extend([ 4, 5, 6]); print(c)