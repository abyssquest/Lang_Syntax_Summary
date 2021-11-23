# 3) switch문
#   형식) switch(비교구문, 실행구문1, 실행구문2, 실행구문3, ...)
switch("name", id="hong", pwd="1234", age=25, name="홍길동")

empname <- scan(what = "")
empname # "kang"

switch(empname, hong=250, lee=350, kim=200, kang=400) # 400