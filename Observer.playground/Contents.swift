/*:
 
 # Observer
---
*/

/*:
### 프로퍼티 옵저버란?
: 변수의 변함에 따른 관찰자역할
*/

/*:
 
 #### didSet
 : 값이 변경된 직후 호출되고, 변하기 전의 값이 oldValue로 자동 저장됩니다.
 
 #### willSet
 : 값이 변경되기 직전에 호출되고, 변한 후의 값이 newValue로 자동 저장됩니다. 
 */

var myProperty: Int = 20 {
    didSet{
        // 변경된 직후에 호출
        // oldValue값 호출가능
    }
    willSet{
        // 변경되기 직전에 호출
        // newValue값 호출가능
    }
}

/*:
 * 저장속성과 계산속성만 사용 가능
 * willSet보다 didSet이 더 많이 사용함.
 * willSet과 didSet이 있을땐, willSet이 먼저 실행된다.
*/

var name: String = "홍길동" {
    didSet{
        print("변하기 전의 값: \(oldValue)")
    }
    willSet{
        print("변한 후의 값: \(newValue)")
    }
}

name = "배지해"
/*
 출력:
 변한 후의 값: 배지해
 변하기 전의 값: 홍길동
 */


class UserAccount {
    var username: String
    var password: String
    var loginAttempts: Int = 0 {
        didSet {
            if loginAttempts >= 3 {
                print("로그인 변경 시도가 3회를 초과하였습니다. ")
                print("계정이 비활성화 되었습니다.")
            }
        }
    }
    
    var isLocked: Bool = false {
        didSet {
            if isLocked {
                print("계정이 잠겼습니다.")
            }else {
                print("계정이 잠금 해제되었습니다.")
            }
        }
    }
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    func login(with enteredPassword: String) {
        if enteredPassword == password {
            print("로그인 성공!")
            loginAttempts = 0
        }else {
            print("로그인 실패!")
            loginAttempts += 1
        }
    }
    
    private func lockAccount() {
        isLocked = true
    }
    
    func unlockAccount() {
        isLocked = false
    }
}

let user = UserAccount(username: "EarthSea", password: "1234")

user.login(with: "earthsea")
// 출력: 로그인 실패!
user.login(with: "12345")
// 출력: 로그인 실패!
user.login(with: "1234!")
/* 출력:
 로그인 실패!
 로그인 변경 시도가 3회를 초과하였습니다. 
 계정이 비활성화 되었습니다.
 */
user.login(with: "프로퍼티 옵저버")
/* 출력:
 로그인 실패!
 로그인 변경 시도가 3회를 초과하였습니다. 
 계정이 비활성화 되었습니다.
 */

user.unlockAccount()
// 출력: 계정이 잠금 해제되었습니다.
