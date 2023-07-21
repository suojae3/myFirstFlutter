import UIKit

/*:
 # Part6 - Loops (반복문)
 */
/*:
 ---
 * 반복문의 종류
 ---
 */
/**====================
- 1) For 반복문
- 2) While 반복문
     (1) while
     (2) repeat-while
=======================**/


/*:
## 1) for문
 * For문의 기본 형태
 ---
 */
//스위프트 스타일의 문법은 직관적이고 쉽게 작성이 가능하도록 되어있음

for index in 1...5 {        //let index = 1, let index = 2, let index = 3, let index = 4, let index = 5
    print("For문 출력해보기: \(index)")
}




for index in 1...4 {
    print("\(index)에 5를 곱하면 \(index * 5)")
}




// 참고 >
// C언어/Java 스타일의 for 문 ====> 다른 언어들에 비해 엄청 읽기 쉽고 간결한 형태로 이루어짐

//for(int i = 0; i <= 5; i++) {
//
//}




// 이런 방식으로 많이 활용

var number = 10


for i in 1...number {
    print(i)
}




/*:
 ---
 * 참고) 와일드 카드 패턴
 ---
 */
//:> 와일드 카드 패턴 _ (언더바)은 스위프트에서 생략의 의미!

for _ in 0...10 {
    print("hello")
}



let _ = "문자열"


(1...10).reversed()



let a = (1...10).reversed()

print(a)


/*:
 ---
 * 배열 등 컬렉션 타입에서도 사용 가능
 ---
 */
// 컬렉션에서 각 아이템을 차례 차례 한번씩 뽑아서 중괄호 안에서 사용

let list = ["Swift", "Programming", "Language"]


for str in list {
    print(str)
}


// 뒤에서 배열 먼저 공부하고 와서 다시 보기




/*:
 ---
 * 문자열에서도 사용 가능
 ---
 */
// 문자열에서 각 문자를 차례 차례 한개씩 뽑아서 중괄호 안에서 사용

for chr in "Hello" {
    print(chr)
    //print(chr, terminator: " ")     //다음줄로 넘어가지 말고, 한칸을 띄워라
}




/*:
 ---
 * 특정한 함수 활용 가능
 ---
 */
// 역순으로 바꾸기

for number in (1...5).reversed() {
    print(number)
}




//홀수 또는 홀수만 뽑아내기

for number in stride(from: 1, to: 15, by:2) {     //마지막 숫자는 포함하지 않음
    print(number)
}




//:> stride: 성큼성큼 걷다.


let range = stride(from: 1, to: 15, by: 2)     //  StrideTo<Int>
print(range)
// 1, 3, 5, 7, 9, 11, 13

for i in range {
    print(i)
}


let range1 = stride(from: 1, through: 15, by: 2)     // StrideThrough<Int>
print(range1)
// 1, 3, 5, 7, 9, 11, 13, 15

for i in range1 {
    print(i)
}



let range2 = stride(from: 10, through: 2, by: -2)      //   StrideThrough<Int>
print(range2)
// 10, 8, 6, 4, 2


for i in range2 {
    print(i)
}




/*:
## for문 주의점
* for문에서 선언하는 변수(상수)에 대한 정확한 이해
---
*/
/**====================================================
 for문의 임시 상수
 - 1) for문이 진행되는 동안 사용이 되는 임시적인 상수(let)이다.
 - 2) for문에서 선언하는 변수(상수)는 for문 내에서만 사용이 가능하다.
======================================================= **/


var name = "홍길동"


for name in 1...5 {
    print(name)
}



for n in 1...5 {
    print(name)
}


//print(n)




/**===================================================
 일반적인 변수 (범위 - 스코프)
 - 1) for문 내부에서는 외부에 선언된 변수에는 접근이 가능하다.
 - 2) for문 내부에서 새롭게 선언한 변수에는 외부에서 접근이 불가능하다.
======================================================**/


var sum = 0

for i in 1...10 {
    sum += i
}

print(sum)




for index in 1...5 {
    print("For문 출력해보기: \(index)")
    print(name)
    var realName = "잡스"
    print(realName)
}


//print(realName)











/*:
 ## 2) while문
 * While문의 기본 형태
 ---
 */
var sum = 0
var num = 1

while num <= 50 {   // 조건이 만족하는 동안 계속 반복
    sum += num
    num += 1      // 이런 조건이 필요 (위의 조건식을 변화시키지 않으면 무한 반복하게됨)
}


print("총 합의 출력: ", sum)

// 조건을 주의해서 짜야함
//:> 무한반복(루프)을 주의


/**============================================================
 for문과 비교
 - 1) 반복이 시작되기 전에, 반복 횟수가 정해져 있지 않을때 사용 (조건에 의해 반복)
 - 2) 조건이 거짓이 될 때까지 일련의 명령문 수행
     (반드시 while문 내부에서 조건을 변화시키는 일이 일어나야함)
==============================================================**/




/*:
 ## 3) repeat-While문
 * repeat-While문의 기본 형태
 ---
 */

var i = 1

repeat {
    print("\(3) * \(i) = \(3 * i)")
    i += 1
} while i <= 9





// 일단 한번은 실행하고 나서, 조건을 판단해서 실행


// (조건(컨디션)이 마지막에 있음)
// 루프를 통과하는 각 패스의 끝 부분에서 조건을 평가


// (스위프트 이외의) 다른 언어에서는 do - while 문으로 명명




/*:
---
* while문과 repeat-While문의 차이
---
*/
// 미세한 차이가 생길 수 있으므로 주의해서 사용해야 함


var number = 5
var sumOfNum = 0


while number < 5 {
    sumOfNum += number
    number += 1
}

number      // 5
sumOfNum    // 0





// 위와 차이가 생김
// repeat-while문은 코드를 먼저 실행한 다음 조건을 확인

number = 5
sumOfNum = 0

repeat {
    sumOfNum += number
    number += 1
} while number < 5

number      // 6
sumOfNum    // 5




/*:
 # 제어전송문
 - 반복문에서 쓰이는 제어전송문(Control Transfer Statement)
 */
/*:
 ## 1) continue
 * continue의 사용
 ---
 */

for num in 1...20 {
    if num % 2 == 0 {   // num 2의 배수
        continue
    }
    print(num)
}





/*:
 ## 2) break
 * break의 사용
 ---
 */

for num in 1...20 {
    if num % 2 == 0 {
        break
    }
    print(num)
}




/*:
---
* 주의할점 - 중첩 사용시의 적용 범위
---
*/

for i in 0...3 {
    print("OUTER \(i)")
    for j in 0...3 {
        if i > 1 {
            print("  j :", j)
            continue
            //break
        }
        print("  INNER \(j)")
    }
}


//:> 가장 인접한 범위의 반복문에 영향을 미침



/*:
 ## 3) Labeled Statements
 */
/*:
 ---
 * 레이블이 매겨진 문장(Labeled Statements)과 continue, break의 사용
 ---
 */
// 반복문을 중첩적으로 사용할때, 각 반복문에 이름을 붙여서, 가장 인접한 범위 이외의 반복문도 제어가능


OUTER: for i in 0...3 {
    print("OUTER \(i)")
    INNER: for j in 0...3 {
        if i > 1 {
            print("  j :", j)
            continue OUTER
            //break OUTER
        }
        print("  INNER \(j)")
    }
    
}





/*:
 # 연습문제
 */
/*:
 1) 랜덤 문자열 뽑아내는 함수
 * 문자열을 입력하면 그중 한개의 글자를 랜덤으로 뽑아주는 함수를 만들어 보자!
 ---
 */
// "안녕하세요"  ===> "녕"

func chooseRandomString(_ chars: String) -> String {
    return String(chars.randomElement()!)
}




chooseRandomString("안녕하세요")





/*:
 2) 소수를 판별하는 함수
 * 소수, 즉, 1과 자기 자신만으로 나누어 떨어지는 1보다 큰 양의 정수를 판별하는 함수를 만들어 보기
 ---
 */
// 소수판별을 for문으로 구현하기

var num = 97

var isPrime: Bool = true   // 깃발


for i in 2..<num {
    
    if num % i == 0 {
        isPrime = false
        break
    }
}


if isPrime {
    print("소수입니다.")
} else {
    print("소수가 아닙니다.")
}







// 소수 여부를 알려주는 함수 ==========================

func primeNumberCheck(num: Int) -> Bool {
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    return true
}



if primeNumberCheck(num: 7) {
    print("소수입니다.")
} else {
    print("소수가 아닙니다.")
}




// 소수를 판별해서 프린트까지 해주는 함수 =================

func primeNumber(num: Int) {
    for i in 2..<num {
        if num % i == 0 {
            print("소수가 아닙니다.")
            return
        }
    }
    print("소수입니다.")
}



primeNumber(num: 97)



/*:
 # 연습문제
 -
 */
/*:
 ## 3) 팩토리얼 구현하기
 * 수학에서의 팩토리얼 5! = 5 x 4 x 3 x 2 x 1
 ---
 */
/**=======================================
- (고등학교 수학에서의 팩토리얼 개념)
-  5! = 5 x 4 x 3 x 2 x 1
-  4! = 4 x 3 x 2 x 1

-  n! == n * (n-1) * ... * 1  ( n >= 1 )
===========================================**/

/*:
---
* 팩토리얼을 함수로 구현
---
*/
// 어떻게 반복하도록 만들면 될까?


func factorial(num: Int) -> Int {
    
    var sum = 1
    
    for i in 1...num {
        sum = sum * i
    }
    
    return sum
}



factorial(num: 5)





/*:
 ## 재귀함수
 * 자기 자신을 반복해서 호출하는 함수
 ---
 */
// 자기 자신을 반복해서 호출하는 함수: 재귀함수

// 5! = 5 * (4 * 3 * 2 * 1)
// 5! = 5 * (4!)



func factorialF(num: Int) -> Int {
    if num <= 1 {
        return 1
    }
    return num * factorialF(num: num - 1)
}


factorialF(num: 5)




//:> 재귀함수를 구현할 때는 자칫 잘못하면, 스택오버플로우 현상이 일어날 수 있으므로 주의!


/*:
 # Part8 - Optionals(옵셔널)
 */
/*:
---
* 타입의 기본 개념에 대한 이해
---
*/
// 스위프트는 왜 옵셔널이라는 개념을 도입했을까?
// 모든 프로그래밍에서 아래와 같은 상황은 항상 골치거리임


var yourName: String        // 선언
//yourName = "홍길동"           // 값을 저장하지 않는다면..

print(yourName)   // (만약 저장과정이 없다면) 메모리에 저장된 값이 없는데 접근 ===> 🔸"에러"




/*:
---
* 타입(Type)
---
*/
// 지금까지의 타입 선언

let name: String = "Jobs"        // 명시적
let newName = "Musk"             // 암시적
var myAge = 20                   // 암시적
let myGrade: Double = 3.54       // 명시적


/*:
---
* 옵셔널 타입(Optional Type)
---
*/
// 모든 타입의 뒤에 ? 물음표를 붙이면 옵셔널 타입이 된다.

var num: Int? = 3
var yourAge: Int? = nil
var yourGrade: Double? = nil
var name1: String? = "Jobs"



num = nil
name1 = nil


// 값이 없어도 되는 타입으로 선언 했기 때문에, 값이 없어도 괜찮음


//:> nil - 값이 없음을 나타내는 키워드 (실제 값이 없음이 아님)


/*:
---
* 옵셔널, 옵셔널 타입의 기본 개념에 대한 이해
---
*/

// 메모리 공간에 "임시적인 타입"을 넣어놓으면 어떨까?


var optionalName: String?
//optionalName = "홍길동"


print(optionalName)   // 에러가 나지 않음 (옵셔널은 값이 없다는 것을 나타내는 키워드)



/**=========================================
- 옵셔널 타입 선언의 기본 규칙
- 1) nil 대입 가능
- 2) 자동 초기화 (값을 넣지 않을 시에 nil로 초기화) ⭐️
============================================**/




/*:
---
* 정식문법 표기
---
*/

let num1: Int? = 2             // 간편표기
let num2: Optional<Int> = 0    // 정식문법




/*:
---
* 옵셔널 타입 연습
---
*/
//var optionalNum = nil         // 불가능한 형태

var optionalNum: Int? = nil     // (추론할 형식이 없기 때문에 반드시 타입 어노테이션으로 초기화해야됨)
optionalNum = 10

// 값이 없을 수도 있는 (임시적인)타입이야


print(optionalNum)      // Optional(10)





let str: String = "Swift"
var optionalStr: String? = nil      //옵셔널 스트링 타입 ====> (값이 없을 수도 있는 타입이다)




var a: Int? = 7  // 옵셔널 인트
var b = a        // 값을 복사해서 담는 다면 타입은?

print(b)




var c: Int = 5
b = c     // Int를 Int?타입에 담을 수는 있다. (어쨌든 타입이 Int? 타입으로 바뀌어서 담김)

print(b)




/*:
---
* 옵셔널 타입끼리의 연산은 불가능
---
*/
//:> 옵셔널 타입끼리의 계산은 당연히 불가능

var numA: Int? = 3
var numB: Int? = 7



//print(numA + numB)




/*:
 ## 옵셔널 타입 사용하기
* 옵셔널 타입: 값이 없을 수도 있는 경우를 포함하는(감싸고) 있는 임시적 타입
---
*/

var num: Int?
var str: String? = "안녕하세요"


print(num)
print(str)






/*:
## 옵셔널값을 추출하는 4가지 방법
* 1) 강제로 값을 추출(Forced Unwrapping): 값이 있다는 것이 확실할때 사용
---
*/
// 강제 추출연산자 !를 옵셔널표현식 뒤에 붙여서 강제로 옵셔널값을 추출



print(str!)


//print(num!)       // 에러



/*:
---
* 2) if문으로 nil이 아니라는 것 확인한 후, 강제로 벗기기
---
*/

if str != nil {
    print(str!)
}


/*:
---
* 3) 옵셔널 바인딩 (if  let 바인딩) ⭐️⭐️⭐️
---
*/
//:> 옵셔널 바인딩 - 바인딩이 된다면, 특정 작업을 하겠다는 의미

if let s = str {    // s라는 상수에 담긴다면    // nil
    print(s)
}





var optionalName: String? = "홍길동"



if let name = optionalName {
    print(name)
}



// 실제 앱을 만들때 guard let 바인딩 많이 사용

func doSomething(name: String?) {
    guard let n = name else { return }
    print(n)
}


doSomething(name: "hello")



/*:
---
* 4) 닐 코얼레싱 (Nil-Coalescing) 연산자를 사용하는 방법
---
*/
//:> 코얼레싱(coalesce): 영어로 (더 큰 덩어리로) 합치다는 뜻

// 옵셔널 타입에 대하여, 디폴트(기본)값을 제시할 수 있을 때 사용
// (직접 값을 벗겨서 사용하는 것은 아니고, 디폴트값 제시를 통해 옵셔널 가능성을 없애는 방법)


// String? ====> String


var serverName: String? = "홍길동"


var userName = serverName ?? "미인증사용자"    // String타입




var hello = "인사하겠습니다. " + (str ?? "Say, Hi")
print(hello)



str = nil
print(str ?? "Say, Hi")



// 백그라운드 기본 색상이 선택이 안되어 있으면 ====> 회색




/*:
 ## 옵셔널 체이닝(Chaining)
* 옵셔널 체이닝 (Optional Chaining) 문법
---
*/
// 옵셔널타입에 대해 접근연산자를 사용하는 방법

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


var choco = Dog(name: "초코", weight: 15)
choco.name
choco.sit()
//choco?.name = "초코얌"
//choco?.sit()              // Optional("초코얌")가 앉았습니다.



//var human = Human()
//human.dog = choco
//human.dog?.name
//print(human.dog?.name)     // Optional("초코얌")



var human2: Human? = Human()
human2?.dog = choco
human2?.dog?.name
print(human2?.dog?.name)      // Optional("초코얌")



/**============================================================================
- 옵셔널 체이닝 (옵셔널 타입에 대해, 접근연산자 호출하는 방법)
- 1) 옵셔널체이닝의 결과는 항상 옵셔널이다.
- 2) 옵셔널체이닝에 값 중에서 하나라도 nil을 리턴한다면, 이어지는 표현식을 평가하지 않고 nil을 리턴
===============================================================================**/


/*:
---
* 실제 사용시에는 결국, Unwrapping해서 사용해야함
---
*/

// 1) 앞의 옵셔널타입에 값이 있다는 것이 확실한 경우

print(human2!.dog!.name)          // name 자체가 옵셔널타입이기 때문에 Optional("초코얌")
print(human2!.dog!.name!)
print(human2!.dog!.weight)        // weight 자체는 옵셔널타입이 아니기 때문에   15



// 2) if let 바인딩

if let name = human2?.dog?.name {    // Optional("초코얌")
    print(name)                      // 초코얌
}



// 3) Nil-Coalescing 연산자

var defaultName = human2?.dog?.name ?? "멍탱구리"
print(defaultName)






/*:
 ## 활용 예시(헷갈릴 수 있는 부분 정리)
* 1) 옵셔널 체이닝 - 함수 관련 표기법
---
*/
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


var name = cat?.myMaster?()?.name               // Optional("Jobs")
print(name)



/*:
---
* 2) 옵셔널 체이닝 - 딕셔너리 관련 표기법
---
*/
class Library1 {
    var books: [String: Person]?
}


var person1 = Person()
person1.name = "Jobs"
print(person1.name)


var person2 = Person()
person2.name = "Musk"
print(person2.name)



var library = Library1()
library.books = ["Apple": person1, "Tesla": person2]



library.books?["Apple"]?.name
library.books?["Tesla"]?.name

// 1. books?  ====> 딕셔너리 자체가 없을 수 있음을 의미
// 2. books?["Apple"]?  ====> 딕셔너리의 결과값이 없을 수 있음을 의미



// 실제로 사용하려면? ===> 옵셔널 벗기고 사용해야함

if let name = library.books?["Apple"]?.name {
    print("이름:", name)
}




/*:
---
* 3) 옵셔널 체이닝에서 함수의 실행은?
---
*/
/**=================================================================
- 옵셔널 타입에 접근해서 사용하는 함수는 앞의 타입을 벗기지 않아도 사용가능 함.
  (함수자체가 옵셔널 타입은 아니기 때문에 함수를 벗겨서 사용할 필요없음)
 
- 1) 함수가 리턴형이 없는 경우
     (1) 타입에 값이 있으면 함수실행
     (2) 타입에 값이 없으면 nil
 
- 2) 함수가 리턴형이 있는 경우
     (1) 타입에 값이 있으면 옵셔널 리턴 타입으로 반환 (원래 리턴형이 옵셔널이 아니더라도)
     (2) 타입에 값이 없으면 nil로 반환
====================================================================**/


var bori: Dog? = Dog(name: "보리", weight: 20)

bori?.layDown()          // ⭐️ 앞의 타입이 옵셔널이라고 해서 메서드가 실행이 안되는 것은 아님
bori?.sit()              // Optional("보리")가 앉았습니다.


bori = nil
bori?.layDown()          // 타입의 값이 nil이면, 함수가 실행이 되지 않고 nil을 반환


// 사실 결론은 간단. 옵셔널 체이닝에서 함수(메서드 실행)의 경우 크게 신경을 쓰지 않고 호출하면 됨
// (옵셔널이라는 것은 변수 안의 값에 대한 문제일 뿐)



/*:
 ## 암시적 추출 옵셔널 - IUO 타입
 ## (Implicitly Unwapped Optional)
* 타입 선언시에 !가 붙어있는 타입 (Int!)
---
*/
// (특정상황에서) 벗겨질 준비가 되어있는 타입 ⭐️
// ===> 옵셔널 타입이 아닌 다른 변수에 담을 때, 자동으로 벗겨서 저장이 됨

var number: Int! = 7            // Int!
                                // 값을 저장하지 않을 때 nil로 초기화됨
print(number)  // Optional(7)   // "실제 사용시에 강제로 벗겨지는 건 아니다"


//:> 암시적 추출 옵셔널타입: (제한적인 상황에서) 옵셔널 바인딩이 필요없음

//⭐️ 옵셔널이 아닌 타입의 변수로 저장될때, 자동으로 언래핑 됨⭐️
var number2: Int = number     // (제한적인 특정상황)
print(number2)   // 7
     

// 일반 변수에 복사해서 담으면 ===> Int?
var number3 = number          // 형식추론을 사용하는 경우 자동으로 추출되지 않음
print(number3)   // Optional(7)


var number4 = number!         // (명시적으로) 강제로 벗기거나, 옵셔널 바인딩도 가능
print(number4)





var name: String! = "홍길동"
name.count     // 값이 있는 경우에만, 옵셔널 체이닝을 하지 않아도 되지만(값이 없을땐 에러 발생)



/*:
---
* 연습
---
*/
// 1) 일반적인 옵셔널 타입 =========================

let optionalString: String? = "String"
print(optionalString)


// 옵셔널 타입이 아닌 변수에 담으려면(벗겨서 담아야함)

let forcedString: String = optionalString!
print(forcedString)

// (1) 확인후, 강제로

if optionalString != nil {
    print(optionalString!)
}

// (2) if let 바인딩

if let undefiniteString = optionalString {
    print(undefiniteString)
}



// 2) IUO 타입 ===============================


// (제한적인 상황에서) 벗겨질 준비가 되어있는 타입

let unwrappedString: String! = "String"
print(unwrappedString)                    // Optional("String")

let normalString: String = unwrappedString     //  ⭐️ 특정상황 ⭐️
print(normalString)



// Int?     ====>   Int
// String?  ====>   String



// 하지만, 일반적인 방법처럼 언래핑해서 사용해도 됨

if let definiteString = unwrappedString {
    print(definiteString)
}




/*:
 ## 암시적 추출 옵셔널의 사용
* 왜 알아야 할까?
---
*/
/**===================================================================
- 실제 앱 구현 시,

- 1) (스토리보드에서 IBOutlet 연결할때) 실제 위와 같은 타입으로 자동으로 선언됨
     (옵셔널 체이닝. 즉, 접근연산자를 사용할때 ?를 사용하지 않아도 됨)
     var label: UILabel!
 
- 2) API에서 IUO타입으로 리턴하는 경우가 있음

- Int! 타입은 그냥 Int? 타입으로 봐도 무방함 (그렇기에 문법적으로 읽을 수 있기만 하면 됨)
=====================================================================**/

/*:
---
* 실제 앱 구현시 IUO타입은 개발자가 실수할 가능성을 낮춰주는 역할
---
*/
//:> 암시적 추출 옵셔널타입: 옵셔널 체이닝이 필요없음

class MyViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(systemName: "pencil")
        mainLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
    }
}


/*:
 ## 함수와 옵셔널 타입의 사용
 * 옵셔널타입의 파라미터 사용
 ---
 */
// 옵셔널 파라미터 사용 함수의 정의

func doSomePrint(with label: String, name: String? = nil) {   // String? = nil
    print("\(label): \(name)")
}



// 함수의 실행

//doSomePrint(with: <#T##String#>, name: <#T##String?#>)


doSomePrint(with: "레이블", name: "스티브 잡스")

doSomePrint(with: "레이블", name: nil)

doSomePrint(with: "레이블")


//:> 일반적으로는 String? = nil (기본값까지 설정해서, 함수를 유연하게 사용하도록 함)
// 유연함 ==> 굳이 아규먼트를 안 넣어서 사용해도 됨
// 애플이 미리 만들어 놓은 함수/메서드에는 파라미터가 옵셔널타입과 기본값이 nil로 설정된 함수들이 많음 유의!



/*:
 # Part9 - 컬렉션(Collection)
 */
/*:
 ## 1) 배열(Array)
 * 데이터를 순서대로 저장하는 컬렉션 (자동으로 순번 지정됨)
 ---
 */
/**==============================================================
 - 배열의 문법 약속
 - [] 대괄호로 묶는다. 배열의 인덱스의 시작은 0부터 (모든 프로그래밍 언어 공통 사항)
 - 1개의 배열에는 동일한 타입의 데이터만 담을 수 있다.
 - (순서가 있기 때문에) 값은 중복 가능
================================================================**/


var numsArray = [1, 2, 3, 4, 5]   // 배열 리터럴로 배열을 생성해서 저장

let numsArray1 = [20, 2, 7, 4, 5, 7]

var stringArray = ["Apple", "Swift", "iOS", "Hello"]




/*:
 ---
 * 배열의 타입 표기
 ---
 */
// 정식문법
let strArray1: Array<Int> = []


// 단축문법
let strArray2: [String] = []



/*:
 ---
 * 빈 배열의 생성
 ---
 */
let emptyArray1: [Int] = []
let emptyArray2 = Array<Int>()
let emptyArray3 = [Int]()


/*:
 ---
 * 배열의 기본 기능
 ---
 */
numsArray.count
numsArray.isEmpty


numsArray.contains(1)  //파라미터로 값을 전달
numsArray.contains(8)


numsArray.randomElement()


numsArray.swapAt(0, 1)



/*:
 ---
 * 배열의 각 요소(element)에 대한 접근
 ---
 */
numsArray = [1, 2, 3, 4, 5]   // 배열 리터럴
stringArray = ["Apple", "Swift", "iOS", "Hello"]


// [] 서브스크립트 문법(대괄호를 이용한 특별한 함수)

stringArray[0]
stringArray[1]
stringArray[2]
stringArray[3]




stringArray[1] = "Steve"
print(stringArray)



stringArray.first   // 리턴값 String?  ====> 빈 배열이라면 nil 리턴
stringArray.last


// 배열의 시작 인덱스
stringArray.startIndex

stringArray.endIndex
//stringArray.endIndex.advanced(by: -1)


stringArray[stringArray.startIndex]

stringArray[stringArray.endIndex - 1]
//stringArray[stringArray.index(before: stringArray.endIndex)]



//stringArray.index(<#T##i: Int##Int#>, offsetBy: <#T##Int#>)



stringArray.firstIndex(of: "iOS")     // 앞에서 부터 찾았을때 "iOS"는 배열의 (앞에서부터) 몇번째

stringArray.lastIndex(of: "iOS")     // 뒤에서 부터 찾았을때 "iOS"는 배열의 (앞에서부터) 몇번째



if let index = stringArray.firstIndex(of: "iOS") {
    print(index)
}




/*:
 ---
 * 삽입하기 (insert)
 ---
 */
var alphabet = ["A", "B", "C", "D", "E", "F", "G"]


// 앞 또는 중간에 삽입하기

alphabet.insert("c", at: 4)

//alphabet.insert("c", at: alphabet.endIndex)


alphabet.insert(contentsOf: ["a","b","c"], at: 0)

//alphabet.insert(contentsOf: ["a","b","c"], at: alphabet.endIndex)




/*:
 ---
 * 교체하기 (replace)
 ---
 */
alphabet = ["A", "B", "C", "D", "E", "F", "G"]


// 요소 교체하기
alphabet[0] = "a"


// 범위를 교체하기
alphabet[0...2] = ["x", "y", "z"]



// 원하는 범위 삭제
alphabet[0...1] = []
alphabet





// 교체하기 함수 문법

alphabet.replaceSubrange(0...2, with: ["a", "b", "c"])




/*:
 ---
 * 추가하기 (append)
 ---
 */
alphabet = ["A", "B", "C", "D", "E", "F", "G"]


alphabet += ["H"]



// 추가하기 함수 문법

alphabet.append("H")   // 맨 마지막에 추가하는 것

alphabet.append(contentsOf: ["H", "I"])



//alphabet.append(7)   // 에러 ===> 동일한 자료형만 저장가능함





/*:
 ---
 * 삭제(제거)하기 (remove)
 ---
 */
alphabet = ["A", "B", "C", "D", "E", "F", "G"]



// 서브스크립트 문법으로 삭제

alphabet[0...2] = []   //빈배열 전달하면 해당 범위가 삭제


// 요소 한개 삭제
alphabet.remove(at: 2)  // 삭제하고, 삭제된 요소 리턴
//alphabet.remove(at: 8)    // 잘못된 인덱스 전달 ====> 에러발생


// 요소 범위 삭제
alphabet.removeSubrange(0...2)



alphabet = ["A", "B", "C", "D", "E", "F", "G"]


alphabet.removeFirst()   // 맨 앞에 요소 삭제하고 삭제된 요소 리턴 (리턴형 String)
alphabet.removeFirst(2)   // 앞의 두개의 요소 삭제 ===> 리턴은 안함


alphabet.removeLast()   // 맨 뒤에 요소 삭제하고 삭제된 요소 리턴 (리턴형 String)
alphabet.removeLast(2)



// 배열이 비어있는지도 잘 확인해보고 삭제(제거)해야함 =======> 에러
// alphabet.removeFirst()    // 리턴형 String
// alphabet.removeLast()     // 리턴형 String




// 배열의 요소 모두 삭제(제거)
alphabet.removeAll()
alphabet.removeAll(keepingCapacity: true)  // 저장공간을 일단은 보관해 둠. (안의 데이터만 일단 날림)





/*:
 ---
 * 배열의 기타 기능
 ---
 */

var nums = [1, 2, 3, 1, 4, 5, 2, 6, 7, 5, 0]



// 배열을 정리해보기

// 1) 배열을 직접정렬하는 메서드  sort  (동사)
// 2) 정렬된 새로운 배열을 리턴  sorted (동사ing/동사ed)



nums.sort()   // 배열을 직접 정렬 (오름차순) (배열리턴 하지 않음)
nums.sorted()    //오름차순으로 정렬


nums.reverse()   // 요소를 역순으로 정렬  (배열리턴 하지 않음)
nums.reversed()


nums.sorted().reversed()
// 새로운 배열은 생성하지 않고, 배열의 메모리는 공유하면서 역순으로 열거할 수 있는 형식을 리턴



// 배열을 랜덤으로 섞기

//nums.shuffle()    // 요소의 순서 랜덤으로 직접 바꾸기
//nums.shuffled()





/*:
 ---
 * 배열의 비교
 ---
 */

let a = ["A", "B", "C"]
let b = ["a", "b", "c"]


// 두 배열을 비교해보기

a == b   // false
a != b   // true

// 개별요소 비교, 저장순서도 비교 하기 때문에



/*:
 ---
 * 활용
 ---
 */
// 특정 요소 한개 삭제하기
// ===> 직접 삭제는 불가 (1) 인덱스 찾아서, (2) 인덱스에 해당하는 요소 지우기

var puppy1 = ["p", "u", "p", "p", "y"]



if let lastIndexOfP = puppy1.lastIndex(of: "p") {
    puppy1.remove(at: lastIndexOfP)
}




if !nums.isEmpty {            // "!"(true ====> false)  (false ====> true)
    print("\(nums.count) element(s)")
} else {
    print("empty array")
}




// 배열의 배열 접근

var data = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]



data[0][2]




/*:
 ---
 * 반복문과의 결합
 ---
 */
// 각 요소에 차례대로 접근, 배열과 반복문은 필연적으로 많이 쓰임

for i in nums {
    print(i)
}




//:> enumerate: 영어로 열거하다는 뜻

// enumerated() ===> 열거된 것들을 Named 튜플 형태로 한개씩 전달

// 데이터 바구니이기 때문에,
// 실제 번호표(index)까지 붙여서, 차례대로 하나씩 꺼내서 사용하는 경우가 많을 수 있어서 아래처럼 활용 가능

nums = [10, 11, 12, 13, 14]


// (offset: 0, element: 10)


for tuple in nums.enumerated() {
    //print(tuple)
    print("\(tuple.0) - \(tuple.1)")
}



for (index, word) in nums.enumerated() {      // 바로 뽑아내기
    print("\(index) - \(word)")
}




for (index, value) in nums.enumerated().reversed() {      // 거꾸로 뒤에서 부터
    print("\(index) - \(value)")
}






/*:
 ## 2) 딕셔너리(Dictionary)
 * 데이터를 키와 값으로 하나의 쌍으로 만들어 관리하는 컬렉션
 ---
 */
/**==============================================================
 - 딕셔너리의 문법 약속
 - [] 대괄호로 묶는다. (쌍을 콜론으로 처리)
 - 키값은 유일해야함 / 중복 불가능(구분하는 요소이기 때문에) 밸류값은 중복 가능
 - 1개의 딕셔너리에는 동일한 자료형 쌍의 데이터만 담을 수 있음
 - 키값은 Hashble 해야함
================================================================**/



var dic = ["A": "Apple", "B": "Banana", "C": "City"]   // 딕셔너리 리터럴로 생성해서 저장

let dic1 = [1: "Apple", 2: "Banana", 3: "City"]



// 내부적으로 순서가 존재하지 않음

print(dic)
print(dic1)



/*:
 ---
 * 딕셔너리의 타입 표기
 ---
 */
// 단축문법
var words: [String: String] = [:]

// 정식문법
let words1: Dictionary<Int, String>




/*:
 ---
 * 빈 딕셔너리의 생성
 ---
 */
let emptyDic1: Dictionary<Int, String> = [:]
let emptyDic2 = Dictionary<Int, String>()
let emptyDic3 = [Int: String]()




//var dictFromLiteral = [:]    // 타입 정보가 없으면 유추할 수가 없다.


var dictFromLiteral = ["1": 1, "2": 2]

dictFromLiteral = [:]    // 이미 위에서 타입을 정의했다면, 아래에서 빈 값으로 넣는 것은 괜찮음



/*:
 ---
 * 딕셔너리의 기본 기능
 ---
 */
dic = ["A": "Apple", "B": "Banana", "C": "City"]



dic.count
dic.isEmpty


// contains 함수가 존재하긴 하나, 뒤에서 배울 클로저의 내용을 알아야함
// dic.contains(where: <#T##((key: String, value: String)) throws -> Bool#>)



dic.randomElement()      // Named Tuple 형태로 리턴




/*:
 ---
 * 딕셔너리의 각 요소(element)에 대한 접근 (키 값으로 접근)
 ---
 */
// 배열

var numsArray = [1, 2, 3, 4, 5]

numsArray[0]



//:> 딕셔너리는 기본적으로 서브스크립트[ ]를 이용한 문법을 주로 사용
// 딕셔너리
dic = ["A": "Apple", "B": "Banana", "C": "City"]



dic["A"]        // nil의 가능성 =====> String?(옵셔널)
//print(dic["A"])
//print(dic["Q"])



if let a = dic["A"] {    // 옵셔널 바인딩
    print(a)
} else {
    print("Not found")
}



// 딕셔너리는 값만 따로 검색하는 방법은 제공하지 않음. ⭐️
// 서브스크립트 문법으로 "키"를 전달


// 참고 (잘 사용하지는 않음)
dic["S", default: "Empty"]       // nil이 발생할 확률이 없음
// 자료가 없으면 기본값을 리턴하는 문법  ===> 리턴 String




dic.keys
dic.values


dic.keys.sorted()
dic.values.sorted()



for key in dic.keys.sorted() {     // 오름차순 정렬  ===> "return 배열" 배열이 됨
    print(key)
}




/*:
 ---
 * 업데이트 (update) - 삽입하기 / 교체하기 / 추가하기
 ---
 */
words = [:]



words["A"] = "Apple"   // 애플로 다시 바꾸기
words

words["B"] = "Banana"  // 동일한 키가 없으면 ===> 추가하기
words

words["B"] = "Blue"    // 동일한 키가 있으면 ===> 기존 밸류 덮어쓰기
words


words.updateValue("City", forKey: "C")



// (정식 기능) 함수 문법 (update + insert = upsert)

words.updateValue("City", forKey: "C")   // 새로운 요소가 추가되면 ==> 리턴 nil
words




//words = [:]      // 빈 딕셔너리로 만들기
words = ["A": "A"]   // 전체 교체하기(바꾸기)




//:> 딕셔너리는 append 함수를 제공하지 않음
// append는 순서가 있는 컬렉션의 끝에 추가하는 개념
// 딕셔너리는 순서가 없기 때문에, update를 통해서 추가



/*:
 ---
 * 삭제(제거)하기 (remove)
 ---
 */
dic = ["A": "Apple", "B": "Banana", "C": "City"]


// 요소 삭제해 보기

dic["B"] = nil    // 해당요소 삭제
dic


dic["E"] = nil   // 존재하지 않는 키/값을 삭제 ======> 아무일이 일어나지 않음(에러아님)
dic



// 함수로 삭제해보기

dic.removeValue(forKey: "A")   // 삭제후, 삭제된 값 리턴

dic.removeValue(forKey: "A")   // 다시 삭제해보기 ===> nil리턴




// 전체 삭제하기

dic.removeAll()
dic.removeAll(keepingCapacity: true)





/*:
 ---
 * 딕셔너리의 비교
 ---
 */

let a = ["A": "Apple", "B": "Banana", "C": "City"]
let b = ["A": "Apple", "C": "City", "B": "Banana"]


// 비교 연산자
a == b   // true
// 딕셔너리는 원래 순서가 없기 때문에, 순서는 상관없음
// (순서 상관없이 무조건 true나옴 - Hashable하기 때문에, 순서 상관없이 비교가능)


a != b   // false





/*:
 ---
 * 딕셔너리의 활용
 ---
 */
// 딕셔너리의 중첩 사용

var dict1 = [String: [String]]()        // 딕셔너리 밸류에 "배열"이 들어갈 수도 있다.


dict1["arr1"] = ["A", "B", "C"]
dict1["arr2"] = ["D", "E", "F"]
dict1

//dict1["arr"] = "A"



var dict2 = [String: [String: Int]]()     // 딕셔너리 안에 딕셔너리가 들어갈 수 있다.

dict2["dic1"] = ["name": 1, "age": 2]

dict2["dic2"] = ["name": 2, "age": 4]

dict2




/*:
 ---
 * 반복문과의 결합
 ---
 */
// 딕셔너리 열거해서 프린트 하기

let dict = ["A": "Apple", "B": "Banana", "C": "City"]


// 딕셔너리는 열거하지 않아도, Named 튜플 형태로 하나식 꺼내서 전달
// 순서가 없으므로, 실행마다 순서가 달라짐 ⭐️



// 데이터 바구니이기 때문에,
// 차례대로 하나씩 꺼내서 사용하는 경우가 많을 수 있어서 아래처럼 활용 가능


for (key, value) in dict {
    print("\(key): \(value)")
}


for (key, _) in dict {
    print("Key :", key)
}


for (_, value) in dict {
    print("Value :", value)
}






/*:
 ## 3) 세트(Set)
 * 집합: 수학에서의 집합과 비슷한 연산을 제공하는 컬렉션
 ---
 */
/**==============================================================
 - Set의 문법 약속
 - 생김새는 배열과 같음(따라서, 생성시 타입을 선언 해야함)
 - 수학에서의 집합과 동일하기 때문에 요소는 유일해야함(순서가 존재하지 않음)
 ================================================================**/


var set: Set = [1, 1, 2, 2, 3, 3, 3]

print(set)



/*:
---
* Set을 언제 사용하는가?
---
*/
//:> Set의 값과 Dictionary의 키값은 Hashable
// 정렬순서보다 검색속도가 중요한 경우에 사용
// 검색에 내부적으로 Hashing 알고리즘 사용
// (hashing ===> 특정값을 고정된 길이의 값으로 변환하는 기법으로 인덱싱과 암호화에서 자주 사용됨)


// 또는 유일하면서, 집합의 수학적인 개념(합집합/교집합/차집합/대칭차집합)을 이용할 필요가 있을 때 (집합을 계산하기 간편한 함수를 내장)


/*:
 ---
 * Set의 타입 표기
 ---
 */
// 단축문법
let set1: Set = [1, 2, 3]

// 정식문법
let set2: Set<Int> = [1, 2, 3]



/*:
 ---
 * 빈 Set의 생성
 ---
 */
let emptySet: Set<Int> = []
let emptySet1 = Set<Int>()



/*:
 ---
 * Set의 기본 기능
 ---
 */
set.count
set.isEmpty


set.contains(1)
set.randomElement()



/*:
 ---
 * 업데이트 (update) - 삽입하기 / 교체하기 / 추가하기
 ---
 */
// 서브스크립트 관련 문법 없음 ⭐️



// (정식 기능) 함수 문법

set.update(with: 1)     // Int?


set.update(with: 7)     // 새로운 요소가 추가되면 ====> 리턴 nil



//:> Set는 append 함수를 제공하지 않음
// append는 순서가 있는 컬렉션의 끝에 추가하는 개념
// Set은 순서가 없기 때문에, update를 통해서 추가




/*:
 ---
 * 삭제(제거)하기 (remove)
 ---
 */
var stringSet: Set<String> = ["Apple", "Banana", "City", "Swift"]


// 요소 삭제해 보기
stringSet.remove("Swift")     // "Swift" 삭제한 요소를 리턴
stringSet                     // ["Hello", "Apple"]



// 존재하지 않는 요소를 삭제해보기
stringSet.remove("Steve")       // nil    (에러는 발생하지 않음)



// 전체요소 삭제
stringSet.removeAll()
stringSet.removeAll(keepingCapacity: true)





/*:
## Set의 활용
* Set의 정의
---
*/
var a: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var b: Set = [1, 3, 5, 7, 9]
var c: Set = [2, 4, 6, 8, 10]
var d: Set = [1, 7, 5, 9, 3]


/*:
 ---
 * Set의 비교
 ---
 */
a == b
a != b

//Set(정렬되지 않은 컬렉션)은 어짜피 순서는 중요하지 않음
b == d  // 항상 true


/*:
---
* 부분집합 / 상위집합 / 서로소
---
*/
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]     // 홀수 모음
c = [2, 4, 6, 8, 10]    // 짝수 모음
d = [1, 7, 5, 9, 3]     // 홀수 모음



// 부분집합 여부를 판단

b.isSubset(of: a)   // true 부분집합 여부
b.isStrictSubset(of: a)   // false 진부분집합 여부



// 상위집합

a.isSuperset(of: b)    // true 상위집합 여부
a.isStrictSuperset(of: b)   // false  진상위집합 여부


// 서로소 여부

d.isDisjoint(with: c)



/*:
---
* 합집합
---
*/
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]
d = [1, 7, 5, 9, 3]



var unionSet =  b.union(c)


//b.formUnion(c)      // 원본변경

/*:
---
* 교집합
---
*/

var interSet = a.intersection(b)

//a.formIntersection(b)      // 원본변경
/*:
---
* 차집합
---
*/

var subSet = a.subtracting(b)

//a.subtract(b)       // 원본변경
/*:
---
* 대칭차집합
---
*/

var symmetricSet = a.symmetricDifference(b)

//a.formSymmetricDifference(b)       // 원본변경





/*:
 ---
 * 반복문과의 결합
 ---
 */

let iteratingSet: Set = [1, 2, 3]


for num in iteratingSet {    // 정렬되지 않은 컬렉션이기 때문에, 실행할때마다 순서가 달라짐
    print(num)
}




/*:
 ---
 * 기타 유의점
 ---
 */

var newSet: Set = [1, 2, 3, 4, 5]

var newArray: Array = newSet.sorted()


//:> Set을 정렬하면, 배열로 리턴함 (정렬은 순서가 필요하기 때문)







//Copyright (c) 2021 we.love.code.allen@gmail.com
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in
//all copies or substantial portions of the Software.
//
//Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
//distribute, sublicense, create a derivative work, and/or sell copies of the
//Software in any work that is designed, intended, or marketed for pedagogical or
//instructional purposes related to programming, coding, application development,
//or information technology.  Permission for such use, copying, modification,
//merger, publication, distribution, sublicensing, creation of derivative works,
//or sale is expressly withheld.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//THE SOFTWARE.
