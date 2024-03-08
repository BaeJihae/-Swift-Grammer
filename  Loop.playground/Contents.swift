
// MARK: - For문

// For 문
// : 범위 or 컬렉션에서 item을 한개씩 뽑아, 중괄호 안에서 반복 실행함


// for문의 기본 형태

/*
for item in 범위 or 컬렉션 {
    //code
}
*/

for index in 1...5 {
    print("For문 출력해보기: \(index)")
}


// 스트링 인터폴레이션을 사용한 반복문 출력
for index in 1...4 {
    print("\(index)에 5를 곱하면 \(index * 5)")
}


// 배열 등 컬렉션 타입에서도 사용 가능
let list = ["Swift", "Programming", "Language"]

for str in list {
    print(str)
}

/* 출력 :
 Swift
 Programming
 Language
 */


// 문자열에서도 사용 가능
for chr in "Hello" {
   print(chr, terminator: " ")
}

/*
출력 : H e l l o
 */

// 숫자를 역순으로 정렬하는 함수
for number in (1...5).reversed() {
    print(number)
}

/* 결과 :
 4
 3
 2
 1
 */


// stride를 사용해 범위를 생성하는 함수
for number in stride(from: 1, to: 15, by: 2) {
    print(number)
}

/* 출력 :
 1
 3
 5
 7
 9
 11
 13
 */

for number in stride(from: 1, through: 15, by: 2) {
    print(number)
}

/* 출력 :
 1
 3
 5
 7
 9
 11
 13
 15
 */

// to와 through의 차이는 값을 포함하냐 안하냐의 차이

// 딕셔너리 for문에 적용하면
// 자동적으로 앞에는 key 뒤에는 value 가 들어간다.

let students = ["Bae":12, "Chio":1, "Kim":3]

for (key, value) in students{
    print("\(key)는 공부를 \(value)등 했어")
}

/* 출력 :
 Chio는 공부를 1등 했어
 Bae는 공부를 12등 했어
 Kim는 공부를 3등 했어
 */

for item in 1...5 {
    //item += 1 error!
    print(item)
}

for item in 1...5 {
    var a = item
    a += 1
    print(a)
}

/* 출력 :
2
3
4
5
6
*/



// MARK: - While문

