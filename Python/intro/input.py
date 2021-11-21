# input() : 입력 함수
input()

# 매개변수에 메세지를 입력 가능
a = input('키보드로 데이터를 입력해보세요\n')
print('입력하신 내용은', a, '입니다')

num = input('정수를 입력해주세요 : ')
print('num type : ', type(num)) # 문자열로 출력
print('num : ', num)

# 저장값을 정수형으로 변환
num = int(num)
print('num type : ', type(num)) # 정수형으로 출력

f = float(input("실수를 입력해주세요 : "))
print("f type", type(f))