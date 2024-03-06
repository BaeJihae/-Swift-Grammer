

// Tuple
// 여러 가지의 타입을 하나의 변수나 상수에 저장할 수 있는 타입

// 튜플은 여러 가지의 타입의 값을 () 소괄호로 묶어 정의한다.
let tuple1 = (0.1, 2, 3, "String")

// 인덱스 속성를 통한 튜플의 값에 대한 접근
print(tuple1.0) // 0.1
print(tuple1.1) // 2
print(tuple1.2) // 3
print(tuple1.3) // "String"

// tuple의 파라미터에는 이름을 붙일 수 있다.
let tuple2 = ( a: 0.1, b: 2, c: 3, d: "String")

// 튜플의 파라미터 이름이 있을 때 접근
print(tuple2.a) // 0.1
print(tuple2.b) // 2
print(tuple2.c) // 3
print(tuple2.d) // "String"

// 이름이 있어도 인덱스 속성으로 접근 가능
print(tuple2.0) // 0.1

// 타입 어노테이션 ( type annotation )을 위한 타입 정의 가능
var tpl01: (Int, Int) = (100,200)
var tpl02: (Int, String, Int) = (100, "a", 200)
var tpl03: (Int, (String, String)) = (100, ("t", "v"))
var tpl04: (String) = ("sample string")

// 튜플로 선언을 하여도 튜플안의 요소가 1개밖에 들어있지 않다면,
// 해당 변수는 일반 자료형으로 선언이 된다.
print(type(of: tpl04)) //String

// 그럼 타입 어노테이션을 지정해주지 않는다면?
// 0.1 -> Double or float ? 더 상위인 Double로 자동 지정
// "a" -> Character or String ? 더 상위인 String으로 자동 지정


