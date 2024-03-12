




class Counter {
    
    var count = 0 // 저장 프로퍼티
    
    func increment() { // 인스턴스 메서드
        count += 1
    }
    
    static func reset() { // 타입 메서드
        print("카운터를 초기화합니다.")
    }
}


// Counter 객체 생성
let counter1 = Counter()
counter1.increment()
counter1.increment()
print(counter1.count) // 출력: 2



let counter2 = Counter()
(0...10).forEach{ _ in counter2.increment() }
print(counter2.count) // 12

Counter.reset() // 출력: 카운터를 초기화합니다.

print(counter1.count) // 0
print(counter2.count) // 0


class Vehicle {
    func goForward() {}
}

class Bicycle : Vehicle {
    override func goForward() {
        print("\(Self.self)가 앞으로 전진한다.")
    }
}

class MotorBike : Vehicle {
    override func goForward() {
        print("\(Self.self)가 앞으로 전진한다.")
    }
}

class Car : Vehicle {
    override func goForward() {
        print("\(Self.self)가 앞으로 전진한다.")
    }
}

var bicycle = Bicycle()
bicycle.goForward()
