
import UIKit



//특정 문자열 검색에도 활용가능
var name = "hello+world"

if let range = name.rangeOfCharacter(from: .symbols)??????????????!!!!!.joined() {
    print(name[range])
}
