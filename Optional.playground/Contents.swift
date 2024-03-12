

// MARK: - 옵셔널(Optional)

// 옵셔널이란?
// 값이 없을 수도 있는 경우는 포함하고 있는 임시적 타입


var number: Int

// 🚨Error 발생
//print(number)



// 오류가 발생하지 않음.

var number2: Int?
print(number2)
// 출력 : nil







// 일반 타입
var i: Int = 3
var d: Double = 3.0
var f: Float = 3.0
var s: String = "three"
var c: Character = "t"
var b: Bool = true


// 옵셔널 타입
var iOpt: Int? = 3
var dOpt: Double? = nil
var fOpt: Float? = 3.0
var sOpt: String? = nil
var cOpt: Character? = "t"
var bOpt: Bool? = nil







//❗️ nil은 값이 없음을 나타내는 키워드






// 옵셔널 타입의 기본 규칙
// 1. nil 대입 가능
// 2. 자동 초기화 ( 옵셔널 타입에 nil을 선언하지 않아도 자동으로 nil로 초기화 됨 )

var animal: String?
print(animal)
// 출력 : nil





// 정식 문법 표기
var name: Optional<String>

// 축약 문법 표기
var name2: String?







var x: Int? = 3
var y: Int = 5

// Int를 Int? 타입에 담을 수 없음
// 🚨 Error
// y = x

// 만약 담고 싶다면 옵셔널 바인딩을 해주어야함.
y = x!

// Int?를 Int 타입에 담을 수는 있음
x = y






// 옵셔널 타입 끼리의 연산은 불가능 하다.

var numA: Int? = 3
var numB: Int? = 5

// 🚨 Error
//numA + numB





// ==================================================================


// 옵셔널 값을 추출하는 방법


// 1. 강제 언래핑

// 강제 추출 연산자 !를 사용해 강제로 옵셔널값을 언래핑
// 강제로 추출하는 것이므로 값이 없다면 에러 ( 최대한 안쓰는 게 좋음 )

var num: Int?

// 🚨 error : Execution was interrupted, reason: EXC_BREAKPOINT (code=1, subcode=0x192fcbd38).
// print(num!)



// 2. nil인지 확인 후 강제 언래핑

if num != nil {
    print(num!)
}
// 출력 없음


// 3. 옵셔널 바인딩⭐️


// 바인딩이란 ? 프로그램에 사용된 구성 요소의 실제 값 또는 프로퍼티를 결정짓는 행위

let a: Int = 3

// -> 옵셔널 값을 다른 상수에 대입시켜 값을 언래핑함.

// 1) if - let 바인딩

if let num = num {
    print(num)
}
// 출력 안함

// -> num이라는 상수에 담긴다면 값이 있어서 바인딩이 된 것이고,
// -> num이라는 상수에 담기지 않는다면 값이 없는 것


// 2) guard let 바인딩

func doSomething(num: Int?) {
    guard let num = num else { return }
    print(num)
}

doSomething(num: num)
// 출력안함

doSomething(num: 3)
// 출력 : 3


// guard let 은 guard let 아래의 코드에서 옵셔널 바인딩 한 값을 사용할 수 있고
// if let은 중괄호 안에서만 옵셔널 바인딩 한 값을 사용한다.



// 4. nil-coalescing

// 코얼레싱이란? 더 큰 덩어리로 합치다라는 뜻

// 옵셔널 타입의 변수나 상수에 아무 값도 들어있지 않을 때 (nil일 때) 다른 값으로 대체가능
// 디폴트 값을 제시해서 옵셔널 가능성을 없애는 것

var serverName: String? = "홍길동"

var userName = serverName ?? "미인증사용자"


// ===================================================================


// 옵셔널 체이닝

class Dog {
    var name: String?
    var weight: Int
    
    init(name: String, weight: Int) {
        self.name = name
        self.weight = weight
    }
    
    func sit() {
        print("\(self.name)가 앉았습니다.")
    }
    
    func layDown() {
        print("누웠습니다.")
    }
}


class Human {
    var dog: Dog?
}


// 옵셔널타입에 대해, "접근연산자"를 사용할때, ?(물음표)를 붙여서, 앞의 타입이 값이 nil을 가질 수도 있음을 표시

var human = Human()
human.dog?.name

var human2 : Human? = Human()
human?.dog?.name




// 옵셔널 체이닝
// - 옵셔널 체이닝의 결과는 항상 옵셔널
// - 옵셔널 체이닝 값 중 하나라도 nil이면 무조건 nil 리턴


// 실제로 사용하려면 언래핑해서 사용
// 1) 앞의 옵셔널타입에 값이 있다는 것이 확실한 경우

var human3 : Human? = Human()
human3?.dog = Dog(name: "choco", weight: 3)

print(human3!.dog!.weight)


// 2) if let 바인딩

if let name = human2?.dog?.name {    // Optional("초코얌")
    print(name)                      // 초코얌
}


// 3) Nil-Coalescing 연산자

var defaultName = human2?.dog?.name ?? "멍탱구리"
print(defaultName)




class Cat {
    var name: String?
    
    var myMaster: (() -> Person?)?
    
    init(aFunction: @escaping () -> Person?) {
        self.myMaster = aFunction
    }
}


class Person {
    var name: String?
}


// 함수를 정의
func meowmeow() -> Person? {
    let person = Person()
    person.name = "Jobs"
    return person
}


// 예제를 위한 예제임 ⭐️

                           // 정의한 함수를 할당
var cat: Cat? = Cat(aFunction: meowmeow)


var nameC = cat?.myMaster?()?.name               // Optional("Jobs")
print(nameC)


