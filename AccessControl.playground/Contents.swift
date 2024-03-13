


/*: # 접근제어 */
/*: ## 1) 접근제어의 기본 개념 */
/*: 
 ---
 ### 접근제어가 필요한 이유
 ---
 
 - 자신이 원하는 코드를 감출 수 있음 ( 은닉화 )
 - 코드의 영역을 분리시켜 효율적으로 관리할 수 있음
 - 컴파일 시간 감소
 
 */

// 컴파일러 입장에서는 해당 변수가 어느 범위에서만 사용하는지 인지할 수 있어서 더 효율적이고 빠르게 수행할 수 있다.

class Student {
    private var _name: String = "홍길동"
    
    func setName(_ name: String) {
        self._name = name
    }
}

var student = Student()

// student._name                 // 🚨 error: Value of type 'Student' has no member 'name'
// student._name = "EarthSea"    // 🚨 error: Value of type 'Student' has no member 'name'
student.setName("EarthSea")


// -> Class 외부에서는 private로 선언된 _name에 접근할 수 없음.
// -> 접근하기 위해서는 Class 내부에서 접근 가능한 setName이라는 함수를 만들어서 접근!
// -> 훨씬 안전함.

/*:
 ---
 ### 접근제어의 종류
 ---
 
 - open : 다른 모듈에서 접근 가능 ( 상속 / 재정의 가능 )
 - public : 다른 모듈에서 접근 가능 ( 상속 / 재정의 불가능 )
 - internal : 같은 모듈에서만 접근 가능 ( default 설정 )
 - filprivate : 같은 파일 내에서만 접근 가능
 - private : 같은 scope 내에서만 접근 가능 
 **/

// 접근 제한자를 작성하지 않으면 internal로 정의가 되기 때문에 internal을 잘 쓰지 않는다.


// *** 모듈이란 프레임워크, 라이브러리, 앱 등 import해서 사용할 수 있는 외부의 코드
// *** 타입, 변수/속성, 함수/메서드, 프로토콜 등 특정영역에 제한됨 (모든 요소 )


// 가장 최대의 넓힘
// 클래스는 open
// 구조체는 public ( 상속이 없어서 )



/*: ## 2) 접근제어 기본 원칙 / 기본 문법 */

/*: ### 기본 원칙 */

// 타입은 타입을 사용하는 변수(속성)나, 함수(메서드)보다 높은 수준으로 선언되어야함.
// -> 상위 요소보다 하위 요소가 더 높은 접근 수준을 가질 수는 없음.

// 변수와 변수가 사용하는 타입

var some: String = "접근가능"

// -> 변수는 internal의 타입, String은 public의 타입이므로 internal < public 가능

// 함수와 함수 내부에서 사용하는 타입

private func sFunc(a: Int) -> Bool {
    //public var a: Int = a   // 🚨 Error : Attribute 'public' can only be used in a non-local scope
    //print(a)
    return true
}


// -> sFunc은 internal의 타입, a, "hello" 는 public의 타입으로 internal < public 불가능


/*: ### 기본 문법*/

// 타입
public class SomePublicClass {}
internal class SomeInternalClass {}
fileprivate class SomeFilePrivateClass {}
private class SomePrivateClass {}


// 변수 / 함수
public var somePublicVariable = 0
internal let someInternalConstant = 0
fileprivate func someFilePrivateFunction() {}
private func somePrivateFunction() {}


// 아무것도 붙이지 않으면?
class SomeInternalClass1 {}         // 암시적인 internal 선언
let someInternalConstant1 = 0


/*: ---
- 실무에서 사용하는 관습적인 패턴
 --- */

// 1. private으로 선언된 속성은 변수명 앞에 언더바(_)를 표시
// 2. 저장속성의 (외부에서) 쓰기를 제한하기 ⭐️

class SomeOtherClass {
    private var _name = "이름"         // 쓰기 - private
    
    var name: String {                // 읽기 - internal
        return _name
    }
}

class SomeAnotherClass {
    private(set) var name = "이름"      // 읽기 - internal / 쓰기 - private
}
