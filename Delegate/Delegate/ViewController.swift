

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!

// ================================================
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        
        setup()
        
    }

    func setup() {
        view.backgroundColor = UIColor.darkGray
        
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.placeholder = "무슨 기능일지 모를 때는 일단 질러본다"
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.returnKeyType = UIReturnKeyType.emergencyCall
        
        textField.becomeFirstResponder()
    }
    
    // 텍스트를 한 번에 없앨 수 있는지 허락해주는 메서드
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    
    // 텍스트 필드의 엔터키가 눌러지면 다음 동작을 허락할지 말지 결정하는 메서드
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        
        if textField.text == "" {
            textField.placeholder = "Type Something!"
            return false
        } else {
            return true
        }
        
    }
    
    // 텍스트 필드의 입력이 끝날때 호출 (끝날지 말지를 허락)
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    // 시점 - 유저가 텍스트를 처음 입력한 시점에 실행되는 함수
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("유저가 텍스트를 입력한 시점")
        print(#function)
    }
    
    // 텍스트필드 글자 내용이 (한글자, 한글자) 입력되거나 지워질 때 호출이 되고 허락여부 부여
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("유저가 독수리타법을 시작했다!!")
        
        
        // 텍스트 10글자 제한 코드
        let MAX_LENGTH = 10
        let updatedString = (textField.text! as NSString).replacingCharacters(in: range, with: string)
        if textField.text?.count == 10 {
            textField.text = ""
        }
        return updatedString.count <= MAX_LENGTH
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

     
// ================================================
    

    @IBAction func doneButtonPressed(_ sender: UIButton) {
        
        textField.resignFirstResponder()
        
        
    }
    
}
