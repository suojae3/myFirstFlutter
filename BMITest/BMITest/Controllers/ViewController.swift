//
//  ViewController.swift
//  BMITest
//
//  Created by ㅣ on 2023/04/05.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var heightTextfield: UITextField!
    @IBOutlet weak var weightTextfield: UITextField!
    @IBOutlet weak var bmiButton: UIButton!
    
    
    var bmiManager = BMICalculatorManager()
    
//===========================================================
    //MARK: viewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }

//===========================================================

    //MARK: makeUI

    private func makeUI() {
        heightTextfield.delegate = self
        heightTextfield.attributedPlaceholder = NSAttributedString(string: "cm단위로 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        weightTextfield.delegate = self
        weightTextfield.attributedPlaceholder = NSAttributedString(string:"kg단위로 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        mainLabel.text = "BMI 계산기"
        bmiButton.layer.cornerRadius = 8.0
        bmiButton.clipsToBounds = true
        bmiButton.setTitle("계산입력", for: .normal)
    }
    
    
//===========================================================
    
    //MARK: 버튼 눌렸을 떄 동작사항 구현

    @IBAction func bmiButtonTapped(_ sender: UIButton) {
        
            // 어차피 버튼 누르면 세그웨이 자동실행
            // ===> shouldPerform 세그웨이 자동실행
            // ===> prepare 세그웨이 자동실행
        
    }
    

//===========================================================

    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if heightTextfield.text == "" || weightTextfield.text == "" {
            mainLabel.text = "키와 몸무게를 입력하셔야합니다"
            mainLabel.textColor = .red
            return false
        }
        mainLabel.text = "키와 몸무게를 입력해주세요"
        mainLabel.textColor = .white
        return true
    }
    
     
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //맞는 세그웨이인지 identifier 확인하고
        if segue.identifier == "toSecondVC" {
            //목적지 설정해주고 (이때 타입캐스팅 잊지말고!)
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.bmi = bmiManager.getBMI(height: heightTextfield.text!, weight: weightTextfield.text!)
        }
        
        //데이터 전송 이후에 입력값 지워주기
        heightTextfield.text = ""
        weightTextfield.text = ""
        
    }
    
}

//MARK: VC extension

extension ViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if Int(string) != nil || string == "" {
            return true
        }
        return false //글자입력 허용하지 않음
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //첫번째 텍스트필드가 빈문자열이라면 두번째 텍스트 필드의 응답객체를 해제하겠다
        if heightTextfield.text != "", weightTextfield.text != "" {
            weightTextfield.resignFirstResponder()
            return true
            
        // 첫번째 텍스트필드가 빈문자열이 아니라면 두번째 텍스트필드를 응답객체로 설정하겠다.
        } else if heightTextfield.text != "" {
            weightTextfield.becomeFirstResponder()
            return true
        }
        return false
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        heightTextfield.resignFirstResponder()
        weightTextfield.resignFirstResponder()
           
    }
}


