/*:
 
 # TypeCasting
---
*/
/*:
## 타입캐스팅이란?
: 변수나 객체의 타입을 다른 타입으로 변환하는 것
*/
/*:
 
 ### "is"
 : 타입을 체크하는 연산자, Bool 타입 반환
 */

var name: String = "EarthSea"

print(name is String)
print(name is Int)

/* 출력 :
 true
 false
 */

var alphabet: Character = "A"

print(alphabet is Character)
print(alphabet is String)

/* 출력 :
 true
 false
 */

var age: Int = 20

print(age is Int)
print(age is Double)
/* 출력 :
 true
 false
 */



/*:
 ---
 */
/*:
 ## 업캐스팅 VS 다운캐스팅
 : 인스턴스의 타입을 확인하거나 해당 인스턴스를 슈퍼클래스나 하위클래스로 취급하는 방법
 */




class Vehicle {
    var numberOfWheels: Int = 4
    var kindsOf: String = "car"
    var isPublicTransport: Bool = false
}

class Car: Vehicle {
    
    // 상속
//    var numberOfWheels: Int
//    var kindsOf: String
//    var isPublicTransport: Bool
    var brand: String = "Hyundai"
}

class ElectricCar: Car {
    
    // 상속
    //    var numberOfWheels: Int
    //    var kindsOf: String
    //    var isPublicTransport: Bool
    //    var brand: String
    var isCharge: Bool = true
    
}

var vehicle1: Vehicle = Vehicle()
var vehicle2: Vehicle = Car()
var vehicle3: Vehicle = ElectricCar()

//var car1: Car = Vehicle()                         // 🚨 Error
var car2: Car = Car()
var car3: Car = ElectricCar()

//var electricCar1: ElectricCar = Vehicle()         // 🚨 Error
//var electricCar2: ElectricCar = Car()             // 🚨 Error
var electricCar13: ElectricCar = ElectricCar()


/*:
 ### 업캐스팅
 : 하위클래스의 인스턴스를 상위클래스의 타입으로 캐스팅하는 방법
 */

/*:
 ### (인스턴스) as (타입)
 : 인스턴스의 타입의 힌트를 변경하는 연산자
 
 * 컴파일 단계에서 캐스팅이 실행된다.
 * 타입캐스팅 항상 성공
    * 상위 클래스의 메모리구조로 인식
    * 상호 호환가능한 타입도 항상 성공
 
 -> 더 많은 곳에서 적은 곳으로 가는 거기 때문에 덜어내는 거라 오류가 날 가능성이 없다.
 

 
 */

// 업캐스팅 - as
let vehicleA = Vehicle()
let carA = Car()
let electricCarA = ElectricCar()

let vehicleList = [vehicleA, carA, electricCarA]

// -> 다 다른 타입인데도 오류가 나지 않음
// -> 세 요소의 타입이 Vehicle()로 업캐스팅됨.

vehicleList[0].numberOfWheels
//vehicleList[1].brand            // 🚨 error: value of type 'Vehicle' has no member 'brand'
//vehicleList[2].isCharge         // 🚨 error: value of type 'Vehicle' has no member 'isCharge'

let carB = Car()

let vehicleCar = carB as Vehicle
//vehicleCar.brand                // 🚨 error: value of type 'Vehicle' has no member 'brand'

/*:
 ### 다운캐스팅
 : 상위클래스의 인스턴스를 하위클래스의 타입으로 캐스팅하는 방법
 */

/*:
 ### (인스턴스) as? (타입)
 : 실패해도 런타임오류가 나지 않는다. 실패시 nil로 반환

 ### (인스턴스) as! (타입)
 : 강제 언래핑한 타입으로 실패시 런타임 오류가 남.
 
 * 컴파일 단계에서 캐스팅이 실행된다.
 * 실패가능성이 있음
 
 var person: Person = Person()
 -> 다운 캐스팅 진행 불가
 var person: Person = Undergraduate() 형식으로 다운 캐스팅해야 도미.
 
 [ 다운 캐스팅의 정확한 이해 ]
 person이라는 변수는 Undergraduate()의 인스턴스를 가리키고 있지만,
 사실 person이라는 변수에는 Person 타입이 들어있다고 인식이 되어 자신이 원래 가지고 있던 항목에만 접근가능하다.
 
 */

// 다운캐스팅 - as!

let vehicle = Vehicle()
vehicle.isPublicTransport

//let car = vehicle as! Car
// 🚨 error: Execution was interrupted, reason: signal SIGABRT.

// 다운캐스팅 - as?

let vehicleC = Vehicle() as? Car
print(vehicleC) // 출력 : nil

// -> 다운캐스팅 성공 언래핑해야 쓸 수 있음

// if let 바인딩을 이용한 다운 캐스팅 언래핑
if let vehicleC = Vehicle() as? Car {
    print(vehicleC.brand)
}
// 출력 : 아무것도 되지 않음.

if let Vehicle_0: Vehicle = Vehicle() as? ElectricCar {}
let newVehicle_0: ElectricCar = ElectricCar()
