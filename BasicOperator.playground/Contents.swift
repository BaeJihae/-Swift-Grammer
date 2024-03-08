
// 기본 연산자


var a = 3, b = 4
// 단항 연산자
+a
-a
a

// 이항 연산자
a + b
a - b
a / b
a * b
a % b

// 삼항 연산자
a = 3
print(a > 4 ? 7 : 2)
// 출력 : 2

// 복합 할당 연산자
// 같은 값에 대입하는 것을 축약해서 사용가능

var value1 = 10
var value2 = 10

value1 = value1 + 10
value2 += 10

print(value1, value2)
// 출력 : 20 20

value1 = value1 - 5
value2 -= 5

print(value1, value2)
// 출력 : 15 15

value1 = value1 * 2
value2 *= 2

print(value1, value2)
// 출력 : 30 30

value1 = value1 / 3
value2 /= 3

print(value1, value2)
// 출력 : 10 10

value1 = value1 % 4
value2 %= 4

print(value1, value2)
// 출력 : 2 2


// 비교연산자


var number = [1, 5, 6, 7, 0]
var answer = 0

for i in 0..<number.count {
    answer += i*number[i]
}
print(answer)
// 출력 : 38
