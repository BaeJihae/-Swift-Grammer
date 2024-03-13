
/*: #클로저(Closure)
 ---
 : 이름이 없는 익명 함수
 */

/**
 
 [ 클로저와 함수 ]
 
 함수 : 이름이 있는 코드의 묶음
 클로저 : 이름이 없는 코드의 묶음
 
 함수는 함수의 이름을 통해 호출하지만, 클로저는 굳이 이름이 없어도 호출할 수 있는 형태로 사용이 가능하다.
 함수와 클로저는 기능은 동일하나 형태가 다르다.
 
 **/


// 함수의 형태
func myFunction() -> Int {
    return 0
}

// 클로저의 형태
let _ = { () -> Int in
    return 0
}

/**
 함수는 타입이다.
 1. "함수"를 변수에 할당할 수 있음
 2. 함수를 호출할 때, "함수"를 파라미터로 전달할 수 잇음
 3. 함수에서 "함수"를 반환할 수 있음.
 */



// 1. "함수"를 변수에 할당할 수 있음
// -> 변수가 함수를 가리키는 것



// 함수를 변수에 할당
func myFunction() -> String {
    return "안녕하세요"
}

let hi: () -> String = myFunction

print(hi)
// 출력 : (Function)

print(hi())
// 출력 : 안녕하세요

// hi라는 변수가 myFunction을 가리키고 있는 것



// 클로저를 변수에 할당
let closure1 = { (param: String) -> String in
    return param + "!"
}

print(closure1("EarthSea"))
// 출력 : EarthSea!
