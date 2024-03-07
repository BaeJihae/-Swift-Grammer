

// MARK: - 데이터 타입



// Int
// 정수 -> -2,147,483,648 ~ 2,147,483,647

var age: Int = 25 // Int 타입

// Float
// 32비트 부동 소수 표현 -> 소수점 이하 6자리까지

var interestRate: Float = 1.2345678910
print("이자율은 \(interestRate)% 입니다.")



// Double
// 64비트의 부동 소수 표현 -> 소수점 이하 15자리까지

var interestRate2: Double = 1.2345678910111213
print("이자율은 \(interestRate2)% 입니다.")



// Bool
// 참 true / 거짓 false

var isOpen: Bool = true
var isLogged: Bool = false

if isOpen {
    print("문이 열려 있습니다.")
}else {
    print("문이 닫혀 있습니다.")
}

func checkLoginStatus(_ isLogged: Bool){
    if isLogged {
        print("로그인되었습니다.")
    }else {
        print("로그아웃되었습니다.")
    }
}

checkLoginStatus(isLogged)



// String
// 문자열을 표현하는 데이터 타입

var emptyString: String = ""
var anotherEmptyString = String()

var introduce:String = """
안녕하세요
저는
배지해
입니다.
"""
print(emptyString)
print(anotherEmptyString)
print(introduce)

// 문자열은 연산으로 이어 붙이기 가능
var variableString = "Mom"
variableString += " and Dad"
print(variableString)



// Character
// 하나의 문자를 표현하는 데이터 타입

var cha: Character = "a"
print(cha)

var catCharaters: [Character] = ["c","a","t","!"]
// 문자열 배열을 합치는 게 가능
var catString = String(catCharaters)
print(catString)

var catCharaters1: [String] = ["cdd","aee","tee","!!!"]

// error!!
// String 배열은 불가능
// var catString1 = String(catCharaters1)
// String 배열은 joined 메서드 사용해야함.
print(catCharaters1.joined())



// Tuple
// 여러가지의 타입을 하나로 그룹화 한 값

let http404Error: (Int, String) = (404,"Not Found")

// 첫번째만 접근을 하여서 가져오기 가능
let (justTheStatusCode, _): (Int, String) = http404Error
print(justTheStatusCode)

// 인덱스 값으로 요소에 접근 가능 0... 순서로 인덱스가 매겨짐.
print(http404Error.0)
print(http404Error.1)

// 각 요소에 이름 부여 가능
let http200Status: (Int, String) = (statusCode: 200, description: "OK")

// 많은 데이터를 담는 데는 적합하지 않음
// 왜냐 다시 매핑을 해야하니깐
let myInfo: (String, Int, Int, Int, String, String) = (name: "qowlgo", age: 24, registrationNumber: 000117, height: 160, job: "iOS Developer", haby: "독서")



let threeNumbers = (1, 2, 5)
let (first, second, third) = threeNumbers
print(first)
print(second)
print(third)


// Any
// 다양한 데이터 타입의 값을 수용할 수 있음

var anyArray: [Any] = [1, "Hi", true]

var anyValue: Any = 1000
anyValue = "어떤 값도 수용 가능"
anyValue = 1234.555

// Error
// Any 데이터 형을 대입하기 위해선 꼭 형변환이 필요함.
// let doubleValue: Double = anyValue

// 타입 캐스팅 활용
let doubleValue: Double = anyValue as! Double
print(doubleValue)



// MARK: - 스위프트에서의 타입

/*
 크게 두가지로 나뉨
 
 1. 기본 데이터 타입
    - Int
    - Double
    - Float
    - Bool
    - String
    - Character
    - UInt - 부호없는 정수타입
 
 2. 사용자 정의 데이터 타입
    - 구조체
    - 클래스
    - 열거형
    - 프로토콜
 */


// 타입 추론
// 타입을 지정하지 않아도 컴파일러가 타입을 유추하여 지정하는 것

// 컴파일러는? 소스 코드를 분석하여 기계어로 번역해주는 프로그램

// 컴파일러의 단계
// 1. 소스코드분석
// 2. 의미분석
// 3. 코드 최적화
// 4. 코드 생성

// 코드적으로 타입 추론 방법
var weight = 10
type(of: weight)

var language = "Swift"
type(of: language)


// 타입의 안정성
// 다른 타입과의 연산이 불가능

var x = 10
var y = 10.0

// error
// why? x는 Int 타입 y는 Double 타입 -> 연산 불가능
// print(x+y)


// 타입 형변환
let integerString = "321"
let number = Int(integerString)

print(number)

let doubleString = "321.2"
let number2 = Int(doubleString)

type(of: number2)
print(number2)
// Double을 Int로 형 변환을 시도하면 값이 없다는("nil")이 나옴.
// 확실하지 않은 형 변환에는 옵셔널 타입이 입혀짐.

let str2 = "123"
type(of: str2)
// 결과 : String

let number1 = Int(str2)
type(of: number1)
// 결과 : Int
print(number1)
// 결과 : Optional(123)
