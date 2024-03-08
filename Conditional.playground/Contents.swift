

// 조건문


// MARK: - If

// If
// 조건에 다른 참의 값만 실행하게 할 수 있는 문장

//if 참과 거짓을 판단할 수 있는 문장 {
//    //code
//}

var number = 3

if number <= 10 {
    print("\(number)은 10보다 작거나 같다.")
}
// 출력 : 3은 10보다 작거나 같다.



// if = else

number = 20

if number <= 10 {
    print("\(number)은 10보다 작거나 - 같다.")
} else {
    print("\(number)은 10보다 크다.")
}
// 출력 : 20은 10보다 크다.



// if - else if - else
number = 40

if number <= 10 {
    print("\(number)은 10보다 작거나 같다.")
} else if number >= 30 {
    print("\(number)은 30보다 크거나 같다.")
} else {
    print("\(number)은 10보다 크고 30보다 작거나 같다.")
}
// 출력 : 40은 30보다 크거나 같다.


// if - else if

number = 72

if number <= 10 {
    print("\(number)은 10보다 작거나 같다.")
} else if number >= 30 {
    print("\(number)은 30보다 크거나 같다.")
}
// 출력 : 72은 30보다 크거나 같다.




// MARK: - Switch

// switch
// 표현식 혹시 변수를 분기 처리 할 때 사용하는 조건문

//switch 변수(표현식) {
//case 값1:
//    //code
//case 값2, 값3:
//    //code
//case 값4:
//    //code
//    fallthrough
//default :
//    //code
//    break
//}

// switch는 enum과 관계가 깊음
enum Day {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

// enum 타입을 Switch의 변수로 적용할 때는 default를 사용하지 않는다.
func activities(for day: Day) {
    switch day {
    case .monday:
        print("월")
    case .tuesday:
        print("화")
    case .wednesday:
        print("수")
    case .thursday:
        print("목")
    case .friday:
        print("금")
    case .saturday:
        print("토")
    case .sunday:
        print("일")
    }
}

activities(for: .monday)
activities(for: .wednesday)

