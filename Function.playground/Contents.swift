

// MARK: - 함수

 /*
 [ 함수 ]
 
 1. 기능 수행
 2. 재사용성 : 코드를 모듈화하여 반복되는 작업을 구체화하여 재사용할 수 있도록 함.
        -> 코드의 중복 방지, 유지보수 용이
 3. 매개변수 -> 입력값
 4. 반환값
 5. 함수타입 : 함수도 타입임 그러므로 다른 함수의 매개변수가 될 수도 다른 함수의 반환값으로 사용될 수도 있다.

 */

// 함수 선언 방식

//func 함수_이름(아규먼트_레이블 파라미터_이름: 파라미터_타입) -> 리턴_타입 {
//    // ... 코드
//
//}

// Example)

// 함수 선언
func sayHi(friend: String) {
    print("Hi, \(friend)!")
}

// 함수의 호출
sayHi(friend: "지해")

// 아규먼트 레이블의 사용
// 아규먼트 레이블이란 함수의 호출 지점에서 사용하는 변수명
func sayHello(to friend: String) {
    print("Hello, \(friend)!")
}

sayHello(to: "지해")

// 아규먼트 레이블의 생략가능
// -> 함수의 호출 과정에서 파라미터 이름 생략가능
func sayBye(_ friend: String) {
    print("Bye, \(friend)!")
}

sayBye("지해")






// 스스로 해보기
// 키에 알맞은 몸무게를 구하는 함수
// 정상몸무게 = (키-100) * (9/10) 이라고 할 때,

// 키에 알맞은 몸무게 구하기
func getWeight(_ height: Int) -> Double {
    Double( height - 100 ) * (9.0/10.0)
}

// 몸무게에 알맞은 키 구하기
func getHeight(_ weight: Double) -> Double {
    weight * ( 10.0 / 9.0 ) + 100.0
}

print(getWeight(160))
print(getHeight(53.5))





// MARK: - 함수와 메서드의 차이

/*
 [ 함수와 메서드의 차이 ]
 
 1. 정의와 소속성 :
    - 함수는 독립적으로 정의되어 특정한 객체나 타입에 속해있지 않다.
    - 메서드는 클래스, 구조체, 열거형 등의 타입에 속해있음.
            객체의 특정한 기능을 수행하기 위해 사용됨.
 
 2. 호출 방식 :
    - 함수는 직접적으로 호출 ex) add(5, 3)
    - 메서드는 객체 또는 타입에 대해 호출 ex) instance.add(5, 4)
 
 3. 소속성 :
    - 함수는 특정한 객체의 속성이나 상태에 접근할 수 없음.
    - 메서드는 객체 또는 타입의 속성에 직접적으로 접근할 수 있다.
 
 */
















