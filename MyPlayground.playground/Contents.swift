import UIKit


// 프로퍼티
let color = "purple"
print(color)

var foodName = "사과"
var fruitName = "포도"
foodName = fruitName
print(foodName)

// 한꺼번에 변수를 생성하고 값을 할당하는 것이 가능
var a = 1, b = 2, c = 3

// 저장 프로퍼티

// let은 변경할 수 없는 바구니

// var은 값이 변경가능한 바구니

// get : 값을 불러오기
// set : 값을 저장하기

var x = 1, y = 2

var sum1: Int {
    return x + y
}
// 한 줄일 경우 return 생략가능
var sum2: Int {
    x + y
}

print()




