import UIKit


/*:
# Part1 - 변수와 상수
*/
/*:
## 1) 변수(Variables)
* 변수의 의미
---
*/
//:> 프로그램 동작의 첫번째 단계 ➞ 메모리에 값(데이터)을 저장 (변수)

var a = 3     // 변수를 선언하면서 저장
var b = 7


//b = 9
//b = b + 2
//
//var c = a + b


print(a + b)
//print(c)



// 변수를 여러개 한꺼번에 선언하는 방법: ,(콤마)로 연결

var x = 1, y = 2, z = 3



// 새로운 공간을 만들고 값을 복사(Copy)해서 저장

var newRoom = b



/*:
---
* 변수의 이름 / 이름 짓기 규칙
---
*/
var nameOfYou = "임꺽정"
var realName = "쾌걸조로"


// 변수의 이름은 소문자로시작(대문자로 시작하는 것은 권장하지 않음), 중간에 숫자들어가는 것은 Ok. (숫자를 첫글자로 시작하는 것은 금지)



var π = 3.1415926
var 你好 = "你好世界"
var 🐶🐮 = "dogcow"
var 변수 = "안녕하세요"


// 특수문자, 한자, 한글 등 사용가능 하지만, 관습적으로 잘 사용하지는 않음




var number1 = 5
var number2 = 7
var number3 = number1 + number2


number3


print(number3)




/*:
---
* 변수는 실제 어떻게 사용될까?
---
*/

var name = "홍길동"
var age = 20
var address = "서울 강남구"




//print(name, age)
//print(name, age, address)


name = "전지현"


print(name, age)


//print("저의 이름은 \(name)입니다.")

age = 30


// 사용 예시
print("저의 이름은 \(name)입니다. 저의 나이는 \(age)살 입니다. 그리고 \(address)에 살고 있습니다.")



//:> String Interpolation(스트링 인터폴레이션): 문자열 보간법
// "\(삽입할변수)" ➡︎ 문자열 중간에 삽입할때 사용





/*:
## 2) 상수(Constants)
* 상수의 의미 (변하지 않는 데이터)
---
*/


let name2 = "김철수"

le nae

name2
//name2 = "이나영"



print(name2)




// 변수와 상수를 통틀어, 변수(저장된 데이터라는 관점에서)라고 일반적으로 부르기도 함









import UIKit


/*:
## 변수 선언의 정식 문법
* 변수의 선언과 저장
---
*/

var a: Int = 3     // 변수를 선언하면서 저장      (메모리 공간을 먼저 생성하는 동시에 데이터를 저장)





/*:
# 스위프트의 데이터타입(Data Types)
*/
/*:
## 1) 데이터 타입(Data Types)의 이해
* 타입이 왜 필요할까?
---
*/
// 타입(Type) ?
// 컴퓨터는 사람의 뇌와 다르다.

//:> 데이터를 얼마 만큼의 크기, 그리고 어떤 형태로 저장할 것인지에 대해 약속이 필요


var i: Int = 4
var j: Int = 3


//i = 3.4       // 소수점 타입 할당이 안됨


var k = i + j
print(k)



// 타입은 메모리 공간의 크기와 연관이 있다.




/*:
---
* 스위프트(Swift)의 데이터 타입
---
*/
/**============================================================
Swift에서 사용하는 데이터타입
- 1) Int: 정수(Integer) 🔸
- 2) Float: 실수(부동소수점) Floating-point Number  6자리 소수점
- 3) Double: 실수(부동소수점) 15자리 소수점 🔸
- 4) Character: 문자(글자 한개)
- 5) String: 문자열 🔸
- 6) Bool: 참과 거짓 🔸

- 7) 기타: UInt, UInt64, UInt32, UInt16, UInt8:  0, 그리고 양의 정수
===============================================================**/


// Int : ... -5 -4, -3, -2, -1, 0, 1, 2, 3, 4, 5 ...
// Double: ... -3.145673, ... ,-2.2315, ... , 0 , ... , 0.453255, ..., 7.45678, ...


var b: Int = 7

var c: Double = 3



let chr: Character = "1"
type(of: chr)           // 타입을 확인하는 방법



//let chr2: Character = "aa"


let chr3: Character = " "      // 빈문자는 에러발생 그러나 공백문자는 가능


let str: String = ""   // 빈문자열 저장가능


let str1: String = "안녕하세요"





/*:
## 2) 타입 주석(Type Annotation)
* 변수를 선언하면서, 타입도 명확하게 지정하는 방식
---
*/

var number: Int      //  1) 변수를 선언 (타입 선언)     (메모리 공간을 먼저 생성하고,
number = 10          //  2) 값을 저장 (초기화)          데이터를 저장)

print(number)        //  3) 값을 읽기





// 자료형을 명확하게 지정

var a1: Int = 3
var b1: Int = 4




// 타입 선언과 초기화

var value: Double = 5.345

value = 12.3    //값 바꾸기


var value2 = value






/*:
## 3) 타입 추론(Type Inference)
* 타입을 지정하지 않아도, 컴파일러가 타입을 유추해서 (알아서 알맞는 타입으로 저장하는) 방식
---
*/
// 값을 보고, 어떤 타입인지를 컴파일러가 추론해서 사용함

var name = "홍길동"
type(of: name)



var num1 = 2
var num2 = 1.2
var num3: String = "Hello"
var num4 = true


type(of: num1)







/*:
## 4) 타입 안정성(Type Safety)
* 스위프트는 데이터 타입을 명확하게 구분하여 사용하는 언어
---
*/
//:> 스위프트는 다른 타입끼리 계산할 수 없다.

let num5 = 7
//let num6: Double = num5   //호환되지 않음(메모리 공간의 크기가 다름)



let d = 12
let e = 3.14

//let result = d + e   //정상적인 계산 불가능





//  소수 + 정수를 더 할 수 없다.
// "안녕" + 5 를 더할 수 없다.







/*:
## 5) 타입(형) 변환(Type Conversion)
* 타입을 변환해서 사용할 수 있는 방법은 있다!
---
*/

//기존에 메모리에 저장된 값을 다른 형식으로 바꿔서, 새로운 값을 생성해서 다른 메모리 공간에 다시 저장


let str2 = "123"
let number1 = Int(str2)

print(number1)






let str3 = "123.4"
let number2 = Int(str3)           // 타입컨버전이 실패했을 때 ====> nil(값이 없음)이 리턴될 수 있다.

print(number2)


     

let n = 2
let n2 = Double(n)

print(n2)





let n3: Int = Int(2.4)
print(n3)





import UIKit

/*:
## 타입애일리어스(Type Alias)
* 별칭 붙이기
---
*/
// 기존에 선언되어있는 타입에 새로운 별칭을 붙여 코드 가독성을 높이는 문법
// (수학에서 치환과 유사)


// 왼쪽에 치환된 별칭이 위치
typealias Name = String




// Name타입이 의미하는 것은 String과 완전히 동일
let name: Name = "홍길동"






// 스위프트에서는 어떤 형태든 치환이 가능

typealias Something = (Int) -> String


func someFunction(completionHandler: (Int) -> String) {
 
}


func someFunction2(completionHandler: Something) {
 
}




import UIKit


/*:
 # Part2 - 기본연산자(Basic Operators)
 */
/*:
 ## 1) 연산자 기초
* 연산자 기초: 연산자란? 연산자의 종류
---
*/
/**=======================================================================
 연산자(operator)
 - 값을 검사, 바꾸거나, 또는 조합하기 위해 사용하는 특수한 ‘기호(symbol)’나 ‘구절(phrase)’임
 
 [피연산자의 갯수에 따른 연산자의 구분]
 - 1.단항연산자: 단일 대상의 바로 앞 또는 바로 뒤에 위치하는 연산자
     (예시) -a ; +b ; !a ; a... 등이 존재
 - 2.이항연산자: 두개의 대상의 가운데 위치하여 검사 및 계산. (대부분 이항연산자 형태로 사용)
     (예시) a + b ; a - b ; a >= b
 - 3.삼항영산자: 세개의 대상을 조합하여 특수한 계산을 함. (단 한가지의 삼항연산자가 존재)
     (예시) a ? b : c
==========================================================================**/


/*:
 ## 2) 기본 연산자
 * 할당 연산자(Assignment Operator)
 ---
 */
// 할당연산자: 오른쪽의 값을 왼쪽에 대입
// (왼쪽의 값을 오른쪽의 값으로 초기화 하거나 업데이트 함)
let num2 = 10
var num1 = 5
num1 = num2

 

/*:
---
* 산술 연산자(Arithmetic Operator): 사칙 연산 등 기본적으로 스위프트에 내장되어 있는 기능
---
*/
/**====================================
 [산술 (이항) 연산자]
 - + : 더하기 연산자      (단항 사용도 가능: +a)
 - - : 빼기 연산자       (단항 사용도 가능: -a)
 - * : 곱하기 연산자(별표)
 - / : 나누기 연산자(슬래시)
 - % : 모듈로(나머지) 연산자 ⭐️
=======================================**/



var a = 456
var b = 123



a + b

a - b

a * b



// ================================

b / a   // 몫 구하기(정수끼리)
    
b % a   // 나머지 구하기(정수끼리)


//:> 모듈로(%)연산자:  비전공자에게 익숙하지 않지만, 정말 많이 사용하는 개념 ⭐️



/*:
---
* 모듈로(%)의 사용 (🔸 Int 일때만 사용) ➞ 주로 사용하는 패턴의 예시
---
*/
// 1) 첫번째 패턴

var yourWatchingTime: Int = 70  // 70분, ====> (예) 1시간 10분


var hour = yourWatchingTime / 60
var minute = yourWatchingTime % 60


print("당신은 \(yourWatchingTime)분. 즉, 총 \(hour) 시간 \(minute) 분을 시청 하셨습니다.")





// 2) 두번째 패턴 (감만 익히기)

var num = 100

var array = ["1", "2", "3"]        // 배열이라는 것 (뒤에서 자세히 배움)

array[0]

array[num % 3]




/*:
---
* 나누기 사용은 항상 주의
---
*/
//:> 프로그래밍에서 나누기 사용은 항상 주의 (한번 더 생각!)
a = 4
b = 5


var newResult: Double

//newResult = a / b

newResult = Double(a / b)

newResult = Double(a) / Double(b)






/*:
---
* 사칙연산 및 모듈로 사용 연습
---
*/

let a1 = 6
let b1 = 2
var result: Int

result = a1 + b1
print(result)

result = a1 - b1
print(result)

result = a1 * b1
print(result)

result = a1 / b1
print(result)

result = a1 % b1
print(result)




/*:
---
* 복합 할당 연산자(Compound Assignment Operators)
---
*/
var value = 0


//value = value + 10
value += 10


//value = value - 5
value -= 5


//value = value * 2
value *= 2


//value = value / 2
value /= 2


//value = value % 2
value %= 2



//value++    //다른 언어에서 1을 증가시키는 방법(스위프트에서 지원하지 않음)


//스위프트에서의 올바른 방식
value += 1




/*:
---
* 비교연산자(Comparison Operators): 결과적으로 문장의 평가값은 참/거짓으로 도출
---
*/

a = 456
b = 123

// 같다(Equal to operator)
a == b

// 같지 않다(Not equal to operator)
a != b

// 크다(Greater than operator)
a > b

// 크거나 같다(Greater than or equal to operator)
a >= b

// 작다(Less than operator)
a < b

// 작거나 같다(Less than or equal to operator)
a <= b




var c = (b == 123)



// if문 하고 결합되어서 주로 사용




/*:
---
* 논리 연산자(Logical Operators)
---
*/
// ⭐️ Logical NOT Operator
!true
!false


// Logical AND Operator(앤드, 그리고)
true && true
true && false
false && true
false && false


// Logical OR Operator(또는)
true || true
true || false
false || true
false || false




// 아이디도 6자리 이상이고, 비밀번호도 6자리 이상이다.


// 하다보면 자연스럽게 이해하게 됨 ===> 스트레스 받지 마세요.



// ! 상당히 많이 사용함 (앱을 만들때 직접 많이 써보면서 익숙해 질 것임)

c = !true





/*:
---
* 연산(계산)의 우선순위(Precedence) 지정 / 기본적으로 곱하기 우선
---
*/

1 + 2 * 3 + 3
1 * (2 - 3)


/**===================================
 연산의 우선순위
 - 1. * /              곱하기/나누기
 - 2. + -              더하기/빼기
 - 3. <=  >  ==  !=    비교
 - 4. &&  ||           논리
 - 5. 삼항연산자
 - 6. = +=             할당, 복합할당
 ===================================*/



// 연산의 우선 순위 참고
// https://developer.apple.com/documentation/swift/swift_standard_library/operator_declarations




//:> 연산자에는 더 깊은 여러가지 개념이 있으나, 심화(Advanced Operators)에서 다룰예정




/*:
 ## 2) 접근연산자
* 접근연산자 - (.)점
---
*/
// 접근 연산자라고 불리는, .(점)은 어떤 의미일까?



Int.random(in: 1...3)

var number = Int.random(in: 1...5)



var name = "스티브"


print(name.count)







import UIKit


/*:
 # 연습문제
 -
 */
/*:
 ## 1) 가위 바위 보 게임 만들기
 * 가위/바위/보 어떻게 만들어야 할까?, 내가 선택한 것과 컴퓨터가 랜덤으로 선택한 것을 비교
 ---
 */
// 조건
// 1) 가위 => 0
// 2) 바위 => 1
// 3) 보  => 2


var computerChoice = Int.random(in: 0...2)
var myChoice = 2




// 그냥 출력한번 해보기

switch computerChoice {
case 0:
    print("컴퓨터의 선택은 가위 입니다.")
case 1:
    print("컴퓨터의 선택은 바위 입니다.")
case 2:
    print("컴퓨터의 선택은 보 입니다.")
default:
    break
}


switch myChoice {
case 0:
    print("당신의 선택은 가위 입니다.")
case 1:
    print("당신의 선택은 바위 입니다.")
case 2:
    print("당신의 선택은 보 입니다.")
default:
    break
}



// 로직을 짜기 전에 고민


if myChoice == 0 {      // 각 케이스 별로 다 고려
    if computerChoice == 0 {
        print("무승부 입니다.")
    } else if computerChoice == 1 {
        print("당신은 졌습니다.")
    } else {  //computerChoice == 2
        print("당신이 이겼습니다.")
    }
} else if myChoice == 1 {
    if computerChoice == 0 {
        print("당신이 이겼습니다.")
    } else if computerChoice == 1 {
        print("무승부 입니다.")
    } else {  //computerChoice == 2
        print("당신은 졌습니다.")
    }
} else {  //myChoice == 2
    if computerChoice == 0 {
        print("당신은 졌습니다.")
    } else if computerChoice == 1 {
        print("당신이 이겼습니다.")
    } else {  //computerChoice == 2
        print("무승부 입니다.")
    }
}






if myChoice == computerChoice {  // 무승부의 경우를 먼저 정의 ===> 이긴 경우 ===> 나머지
    print("무승부 입니다.")
} else if myChoice == 0 && computerChoice == 2 {
    print("당신이 이겼습니다.")
} else if myChoice == 1 && computerChoice == 0 {
    print("당신이 이겼습니다.")
} else if myChoice == 2 && computerChoice == 1 {
    print("당신이 이겼습니다.")
} else {
    print("당신은 졌습니다.")
}





/*:
---
* 열거형으로 만들 수 있음
---
*/
// 나중에 위의 구현을 활용해서, 열거형으로 구현해보기
















import UIKit


/*:
 # 연습문제
 -
 */
/*:
 ## 2) 랜덤 빙고 게임 만들기
 * 내가 선택한 것과 컴퓨터가 랜덤으로 선택한 것을 비교하고 출력
 ---
 */

var computerChoice: Int = Int.random(in: 1...10)
var myChoice: Int = 5



if computerChoice > myChoice {
    print("Up")
} else if computerChoice < myChoice {
    print("Down")
} else {
    print("Bingo")
}









import UIKit


/*:
 # Part3 - 프로그래밍의 기본원리와 조건문
 */
/*:
 ## 1) 조건문(if문)
 - 참(true) 또는 거짓(false)의 특정 조건에 따라 특정 코드만 실행하게 할 수 있는 문장
 ---
 */
// 조건문 (if문)

var number = 10



if number <= 10 {
    print("10보다 작거나 같다.")
}



//:> "조건"의 자리에는 결과가 참 또는 거짓이 나와야함



// 조건문(if - else)

number = 20


if number <= 10 {
    print("10보다 작거나 같다.")
} else {
    print("10보다 크다.")
}




// if - else if - else

number = 40

if number <= 10 {
    print("10보다 작거나 같다.")
} else if number >= 30 {
    print("30보다 크거나 같다.")
} else {
    print("10보다 크고 30보다 작거나 같다.")
}




// if - else if

number = 72

if number <= 10 {
    print("10보다 작거나 같다.")
} else if number >= 30 {
    print("30보다 크거나 같다.")
}



/*:
 ---
 * 1) if문에서 논리적인 구조 및 조건의 순서가 중요
 ---
 */
// 논리적인 오류 없도록 구성해야함 ==========

var num = 8


if num >= 0 {
    print("0 또는 양수입니다.")
} else if num % 2 == 0 {
    print("양의 짝수입니다.")
} else if num % 2 == 1 {
    print("양의 홀수입니다.")
} else {
    print("음수입니다.")
}



// 올바르게 수정해 본다면? ================

if num >= 0 {
    print("0 또는 양수입니다.")
    
    if num % 2 == 0 {
        print("짝수입니다.")
    } else if num % 2 == 1 {
        print("홀수입니다.")
    }
    
} else {
    print("음수입니다.")
}




// 조건의 확인 순서를 잘 고려해야함 ==========


var score = 100


if score >= 70 {
    print("70점이상입니다.")
} else if score >= 80 {
    print("80점이상입니다.")
} else if score >= 90 {
    print("90점이상입니다.")
} else {
    print("70점미만입니다.")
}



// 올바르게 수정해 본다면 ================


if score >= 90 {                // 범위가 작은 조건이 먼저 와야함
    print("90점이상입니다.")
} else if score >= 80 {
    print("80점이상입니다.")
} else if score >= 70 {
    print("70점이상입니다.")
} else {
    print("70점미만입니다.")
}





/*:
 ---
 * 2) 조건을 &&(and), 또는 ||(or)로 연결하는 것도 가능
 ---
 */
var email = "a@gmail.com"
var password = "1234"



if email == "a@gmail.com" && password == "1234" {
    print("메인페이지로 이동")
}



if email != "a@gmail.com" || password != "1234" {
    print("경고메세지 띄우기")
    print("이메일주소 또는 패스워드가 올바르지 않습니다.")
}




/*:
 ---
 * 3) 중첩 사용 가능
 ---
 */

var score1 = 81;

if score1 >= 70 {
    
    if score1 == 100 {
        print("만점")
    } else {
        print("70점이상")
    }
    
}



//:> 프로그래밍에서는 타입만 일치하면 언제든지 중첩이 가능(2중, 3중 상관없음)



/*:
 ---
 * 참고 - 접근 연산자 (.)
 ---
 */
// 한식.볶음밥.당근

// 중식.짜장면.춘장

var id = "abc"

id.count

"abcdef".count


id.isEmpty

id.dropFirst()






/*:
 ## 조건문(if문)의 활용
 * 언제 사용할까? 활용예시
 ---
 */

// 사용자의 아이디가 일치하고, 비밀번호도 일치 한다면

// 입력된 아이디의 글자수가 6자리 이상이라면





if id.count >= 6 {          //  .count는 내장된 기능 (지금은 몰라도 됨)
    print("아이디가 6글자 이상이네요. 다음 화면으로 넘어가겠습니다.")
}





// 가위 / 바위 / 보


var choice = 1    // 0: 가위, 1: 바위, 2: 보


if choice == 0 {
    print("가위입니다.")
} else if choice == 1 {
    print("바위입니다")
} else if choice == 2 {
    print("보입니다.")
}





import UIKit



/*:
 ## 2) Switch문
 - 표현식/변수를 (매칭시켜) 분기처리할때 사용하는 조건문
 ---
 */
//:> if문보다 한정적인 상황에서 사용

var choice: String = "안녕하세요"


// 조건을 부등식이 아닌 "=="와만 비교
// 변수가 어떤값을 가지냐에 따라 실행문을 선택하고 진행




switch choice {   // 변수(표현식)
case "가위":       // "가위" == "가위"
    print("가위 입니다.")
case "바위":
    print("바위 입니다.")
case "보":
    print("보 입니다.")
default:
    break
}


/**=======================================================
 [스위치문의 특징]
 - 1) 스위치문에서 케이스의 ,(콤마)는 또는의 의미로 하나의 케이스에
      여러 매칭값을 넣을 수 있음
 - 2) switch 문은 (비교하고 있는)값의 가능한 모든 경우의 수를 반드시
      다루어야 함 (exhaustive: 하나도 빠뜨리는 것 없이 철저한)
      모든 사례를 다루지 않았을 때에는 디폴트 케이스가 반드시 있어야 한다.
 - 3) 각 케이스에는 문장이 최소 하나 이상 있어야 하며 만약 없다면 컴파일
      에러 발생(의도하지 않은 실수를 방지 목적)
      실행하지 않으려면, break를 반드시 입력해야함 (if문에서는 실행문을
      입력안해도 괜찮지만, 스위치문에서는 필요함)
=========================================================**/



switch choice {  // 문자열
case "가위":
    print("가위 입니다.")
case "바위", "보":
    print("바위 또는 보 입니다.")
default:
    break
}



var isTrue = true


switch isTrue {
case true:
    print("true")
case false:
    print("false")
}




/*:
 ---
 * fallthrough 키워드의 사용
 ---
 */

var num1 = 10

switch num1 {
case ..<10:
    print("1")        // 매칭된 값에 대한 고려없이 무조건 다음블럭을 실행함
    fallthrough
case 10:
    print("2")
    fallthrough
default:
    print("3")
}





/*:
 ---
 * switch문의 범위 매칭 - 패턴 매칭 연산자와 관련
 ---
 */

// ⭐️ 잘못 작성된 예시 =====================


// 비교연산자와 값을 넣으면 안되고, 비교하려는 값이 와야함

//switch temperature {
//case  < 0 :    //이런식으로 작성하면 안된다. ==>   ..<0
//    print("영하 - 0미만")
//case >= 0 && <= 18 :     //이런식으로 작성하면 안된다. ==>   0...
//    print("0이상 무덥지 않은 날씨")
//default :
//    break
//}





// 부등식을 사용될 수 없는 대신에, 범위 매칭을 지원


var num = 30



// ⭐️ 범위연산자, 패턴매칭 연산자 (참과 거짓의 결과가 나옴)

0...50 ~= num
51...100 ~= num




switch num {
case 0...50:      // 0...50 ~= 30 내부적으로 패턴매칭으로 확인
    print("숫자의 범위: 0 ~ 50")
case 51...100:
    print("숫자의 범위: 51 ~ 100")
default:
    print("그 외의 범위")
}




var temperature = 19

switch temperature {
case ..<0:
    print("영하 - 0도 미만")
case 0...18:
    print("0도 이상 무덥지 않은 날씨")
case 19...:
    print("여름 날씨")
default:
    break
}



//:> 이해보다는 여러번 안보고 직접 작성해보는 것이 중요 ⭐️



/*:
 ## Switch문의 활용
 * 스위치문과 밸류바인딩(Value Binding)
 ---
 */

// 바인딩의 일반적인 의미

var a = 7


let b = a     // 바인딩을 한다. (다른 변수/상수의 새로운 식별자로 할당한다.)



//:> 바인딩: 다른 새로운 변수/상수 식별자로 할당




// 스위치문에서의 바인딩

var num = 6


switch num {
case let a:      // let a = num
    print("숫자: \(a)")
default:
    break
}




/*:
---
* 스위치문과 where절 (스위치문에서 조건을 확인하는 방식)
---
*/
// 일단 다른 상수 값에 바인딩한(넣은) 후, 조건절(참/거짓 문장)을 통해 다시 한번 더 조건 확인
// (바인딩 된 상수는 케이스블럭 내부에서만 사용가능하고, 상수 바인딩은 주로 where절하고 같이 사용됨)

num = 7

switch num {
case let x where x % 2 == 0:      // let x = num
    print("짝수 숫자: \(x)")
case let x where x % 2 != 0:
    print("홀수 숫자: \(x)")
default:
    break
}



switch num {
case let n where n <= 7:         // let n = num
   print("7이하의 숫자: \(n)")
default:
   print("그 이외의 숫자")
}



switch num {
case var x where x > 5:       // 변수로 바인딩도 가능 var x = num
    x = 7
    print(x)
default:
    print(num)
}



// where절은 대부분 밸류바인딩 패턴과 함께 사용 (여러 강의에서 또 다룰 예정)


//:> where키워드는 조건을 확인하는 키워드


/*:
 # Part 4 - 튜플
 */
/*:
 ## 1) 튜플(Tuples)
 - 2개이상의 연관된 데이터(값)를 저장하는 Compound(복합/혼합) 타입
---
*/
// 특별하게 타입이 정해져 있지 않음
// 포함될 데이터 갯수를 마음대로 정의하기 나름


let twoNumbers: (Int, Int) = (1, 2)
//type(of: twoNumbers)



let threeNumbers = (1, 2, 5)
//type(of: threeNumbers)


var threeValues = ("홍길동", 20,  "서울")      // 멤버(데이터의 종류 및 갯수)는 튜플을 만들때 결정되므로 "추가"/"삭제" 불가
//type(of: threeValues)




/*:
---
* 연관된 값(튜플)의 각각의 데이터의 접근
---
*/

threeValues.0
threeValues.1
threeValues.2





/*:
---
* Named Tuple(이름이 매겨진 튜플)
---
*/
// 일반적으로 위처럼 사용하면, 혼동할 가능성이 큼

let iOS = (language: "Swift", version: "5")


iOS.0
iOS.1

// 코드의 가독성이 높아짐

iOS.language
iOS.version



/*:
---
* 튜플의 분해(Decomposition)
---
*/
// 튜플의 데이터 묶음을 각 한개씩 분해해 상수나 변수에 저장 가능


let (first, second, third) = threeNumbers
first
second
third



// 모아놓았던 데이터를 분해해서 사용하고 싶을 경우



/*:
---
* 튜플의 값의 비교 - 실제 사용하는 경우는 흔하지는 않음
---
*/
// 두개의 튜플 비교 가능 ===> 왼쪽 멤버부터 한번에 하나씩 비교하고, 같을 경우 다음 멤버를 비교함
// 튜플은 최대 7개 요소 미만만 비교 가능(애플의 라이브러리 기능)


(1, "zebra") < (2, "apple")   // true, 1이 2보다 작고; zebra가 apple은 비교하지 않기 때문
(3, "apple") < (3, "bird")    // true 왼쪽 3이 오른쪽 3과 같고; apple은 bird보다 작기 때문
(4, "dog") == (4, "dog")




("blue", -1) < ("purple", 1)            // 비교가능, 결과: true
//("blue", false) < ("purple", true)    // 에러발생 ===> Bool 값은 비교 불가능





/*:
 ## 2) 튜플과 switch문
 * 튜플의 매칭(Mathching)
 ---
 */
let iOS = (language: "Swift", version: "5")




// 이런 코드를 아래의 스위치문을 이용하면 단순해짐
if iOS.0 == "Swift" && iOS.1 == "5" {
    print("스위프트 버전 5입니다.")
}


if iOS == ("Swift", "5") {
    print("스위프트 버전 5입니다.")
}



// 스위프트의 switch문은 튜플 매칭을 지원 ===> 코드를 단순한 형태로 표현 가능

switch iOS {
case ("Swift", "5"):
    print("스위프트 버전 5입니다.")
case ("Swift", "4"):
    print("스위프트 버전 4입니다.")
default:
    break
}




/*:
 ---
 * 튜플의 활용
 ---
 */
// 튜플의 바인딩

var coordinate = (0, 5)   // 좌표계

switch coordinate {
case (let distance, 0), (0, let distance):   // x축이나 y축에 있으면 출력하라는 코드
    print("X 또는 Y축 위에 위치하며, \(distance)만큼의 거리가 떨어져 있음")
default:
    print("축 위에 있지 않음")
}





// 튜플의 where절 활용

coordinate = (5, 0)


switch coordinate {
case (let x, let y) where x == y:      //일단 x, y를 상수로 지정해주고, 그리고 나서 비교한다.
    print("(\(x), \(y))의 좌표는 y = x 1차함수의 그래프 위에 있다.")
    
case let (x, y) where x == -y:
    print("(\(x), \(y))의 좌표는 y = -x 1차함수의 그래프 위에 있다.")
    
case let (x, y):
    print("(\(x), \(y))의 좌표는 y = x, 또는 y = -x 그래프가 아닌 임의의 지점에 있다.")
}


import UIKit

/*:
 # Part5 - 삼항 연산자와 범위연산자
 -
 */
/*:
 ## 1) 삼항 연산자(Ternary Conditional Operator)
 * 기본 형태 / if문보다 조금은 한정적인 형태로 사용 가능
 ---
 */

var a = 10


//if/else문

if a > 0 {
    print("1")
} else {
    print("2")
}




// 3항 연산자 (위의 if/else문과 완벽하게 동일)

a > 0 ? print("1") : print("2")




// 한줄인 경우
// 주로 값을 대입하는 경우 (주로 값에서 2가지에서 한가지를 선택하는 경우)


//:> 조건에 따라 선택이 두가지인 경우 ➞ 삼항연산자를 떠올리자

/*:
 ---
 * 사용 예시
 ---
 */
var name = a > 0 ? "스티브" : "팀쿡"


//위는 아래와 같다..

if a > 0 {
    name = "스티브"
} else {
    name = "팀쿡"
}


/*:
 ## 2) 범위 연산자(Range Operators)
 * 범위연산자: 스위프트에서 숫자의 범위를 간편하게 표시할때 사용
 ---
 */
/**===================================================
// 아래의 숫자와 위의 숫자까지의 범위를 포함

// 자체가 특별한 타입으로 정의되어있고, 의미하긴 하지만
// 일반적으로 위와 같이 타입을 정의해서 사용하는 경우는 드물고,
// 1) 반복문(for문)    2) 배열    3) switch문
// 에서만 주로 활용하므로 위의 경우에 활용 방식을 이해하는 것이 더 중요

// 주의점>
// 내림차순 형식으로 표기 불가능  12...0
// 실수형식의 범위 표기도 가능하지만 사용하는 경우는 드뭄
=====================================================**/


let numbers = 1 ... 10

/*:
 ---
 * 1) Closed Range Operator(닫힌 범위연산자), One-Sided Ranges의 표기
 ---
 */

let range = 1 ... 10     //ClosedRange<Int>

let range1 = 1...      //PartialRangeFrom<Int>

let range2 =  ...10    //PartialRangeThrough<Int>


// One-Sided 표기시에는 숫자와 범위연산자를 붙여서 써야함


/*:
 ---
 * 2) Half-Open Range Operator(반 개방 범위연산자), One-Sided Ranges의 표기
 ---
 */
let rangeH = 1 ..< 10     //Range<Int>

let rangeH1 =  ..<10    //PartialRangeUpTo<Int>


// One-Sided 표기시에는 숫자와 범위연산자를 붙여서 써야함






/*:
 ## 범위 연산자의 활용
 * 1) for문과 함께 사용
 ---
 */

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}



let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count



for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}



for name in names[...2] {
    print(name)
}

/*:
 ---
 * 2) 배열의 서브스크립트 문법과 함께 사용
 ---
 */

names[...2]

names[..<1]



/*:
 ---
 * 3) switch문의 케이스에서 사용
 ---
 */
var num = 23

switch num {
case 10...19:
    print("10대 입니다.")
case 20...29:
    print("20대 입니다.")
case 30...39:
    print("30대 입니다.")
default:
    print("그 외의 범위 입니다.")
}



let point = (1, 2)

switch point {
case (0, 0):
    print("(0, 0)은 원점 위에 있다.")
case (-2...2, -2...2):
    print("(\(point.0), \(point.1))은 원점의 주위에 있다.")
default:
    print("점은 (\(point.0), \(point.1))에 위치한다.")
}

/*:
 ## 3) 패턴매칭 연산자(~=)
 * 패턴매칭 연산자: 숫자가 범위내에 있는지 확인하는 연산자
 ---
 */
let range = 1...10

range ~= 5

// 결과 값은 참과 거짓




/*:
---
* 10 <= n <= 100 이런 문장은 스위프트에서 성립하지 않는다.
---
*/

var n = 20


if n >= 10 && n <= 100 {
    print("10이상, 100이하입니다.")
}


if 10...100 ~= n {
    print("10이상, 100이하입니다.")
}




/*:
---
* 연습
---
*/

var age = 31


if 20...29 ~= age {
    print("20대 입니다.")
}




// 스위치문은 내부적으로 패턴매칭 연산잘로 구현이 되어있음


switch age {
case 20...29:
    print("20대 입니다.")
case 30...39:
    print("30대 입니다.")
default :
    break
}


/*:
 # 연습문제
 */
/*:
 ---
 * 구구단 출력해보기
 ---
 */
for i in 2...9 {
    for j in 1...9 {
        print("\(i) X \(j) = \(i*j)")
    }
}






/*:
 ---
 * 배수 구해서 출력해보기 - 3의 배수 구하기
 ---
 */
// 3으로 나누어지는 숫자 출력

for i in 1...100 {
    if i % 3 == 0 {
        print("3의 배수 발견: \(i)")
    }
}





// 가독성이 높아지는 구현

for i in 1...100 {
    if i % 3 != 0 {   // 조건을 만족하지 못했을 때 다음으로 넘어감
        continue
    }
    print("3의 배수 발견: \(i)")
}


//:> 여러 조건이 있을때, 가독성 높게 구현 가능


/*:
 ---
 * 이모티콘 출력해보기
 ---
 */
print("😄")
print("😄😄")
print("😄😄😄")
print("😄😄😄😄")
print("😄😄😄😄😄")




for _ in 1...5 {
    print("😄")
}




for i in 1...5 {
    print("😄", terminator: "")
}





for i in 1...5 {
    for j in 1...5 {
        if j <= i {
            print("😄", terminator: "")
        }
    }
    print()
}


