import UIKit

// 자격증(정의) 텍스트필드 프로토콜
protocol RetmoteControlDelegate {
    func changeUp()
    func changeDown()
}


//리모콘 클래스 (텍스트필드의 역할 - 직접적으로 유저와 커뮤니케이션)
class RemoteControl {
    
    var delegate: RetmoteControlDelegate?
    
    func doSomething() {
        print("리모콘 조작이 일어나고 있음")
    }
    
    func channelUp() {
        delegate?.channelUp()
    }
    
    func channelDown() {
        delegate?.channelDown()
    }
}


// TV클래스 (뷰컨의 역할 - 리모콘과 커뮤니케이션)
class TV: RetmoteControlDelegate {
    
    func channelUp() {
        print("TV채널이 돌아간다.")
    }
    
    func channelDown() {
        print("TV의 채널이 내려간다")
    }
}
