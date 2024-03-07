import UIKit


// MARK: - 할당연산자
// 할당 연산자 "="

let color = "purple"
print(color)

var foodName = "사과"
var fruitName = "포도"
foodName = fruitName
print(foodName)

// 한꺼번에 변수를 생성하고 값을 할당하는 것이 가능
var a = 1, b = 2, c = 3



// MARK: - 프로퍼티


// 저장 프로퍼티 ( Stored Property )

// let : 값을 변경할 수 없는 바구니
let name = "지해"
//name = "째" 🚨Error : let -> var로 변경해라.


// var : 값이 변경가능한 바구니
var age = 10
age = 50
print(age) // 50



// 연산 프로퍼티 ( Computed Property )
// 계산한 값을 저장하기 때문에 변경가능한 var로만 선언
// 값을 따로 저장하지 않음.

var x = 10
var y = 20
var z = 0

// 연산 프로퍼티를 가진 sum 변수
// get : 값을 불러오기
// set : 값을 저장하기
var sum: Int {
    get {
        return x + y
    }
    set {
        z = x + y
    }
}
print(sum) // 30

// 더 축약하여 가능w
// get만 필요한 경우엔 get/set 키워드 생략가능
var sum1: Int {
    return x + y
}

// 중괄호 내부 코드가 한 줄일 경우 return까지 생략가능
var sum2: Int {
    x + y
}


// MARK: - print
// 값을 출력하는 함수

print()
print("하이")


// MARK: - 텍스트

// 한 줄 텍스트
// "내용"

// 멀티라인 텍스트
// """ 내용 """

var greeting = """
                안녕하세요
                저는 지해입니다.
                너는 누구냐?!?
                """


// MARK: - 문자 보간법(String Interpolation)
// \()로 사용
// 변수나 상수의 값을 문자열 내에 표현하고 싶을 때 사용

var name2 = "째"
var greeting2 = "안녕하세요 저는 \(name2)입니다."

var height = 160
let greeting3 = "제 키는 \(height)입니다."


// MARK: - 주석

// 한 줄 주석
// // 내용

// 멀티라인 주석
// /* 내용 */

/*
 뭐
 든
 지
 쳐
 도
 됨.
 */



