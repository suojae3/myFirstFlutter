//
//  TestViewController.swift
//  BMITest
//
//  Created by ㅣ on 2023/04/06.
//

import UIKit

class TestViewController: UIViewController {
    
    weak var mainLabel: UILabel!
    weak var calculateButton: UIButton!
    weak var heightTextField: UITextField!
    weak var weightTextField: UITextField!
    
    var bmimanager = BMICalculatorManager()
    
    //===============================================================
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightTextField.delegate = self
        weightTextField.delegate = self
        configureUI()
    }
    
    //===============================================================
    
    func configureUI() {
        mainLabel.text = "키와 몸무게를 입력해주세요"
        calculateButton.layer.cornerRadius = 5
        calculateButton.clipsToBounds = true
        heightTextField.placeholder = "cm단위로 입력해주세요"
        weightTextField.placeholder = "kg단위로 입력해주세요"
    }
    
    func calculateButtonTapped(_ sender: UIButton) {
        print(#function)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if heightTextField.text == "" || weightTextField.text == "" {
            mainLabel.text = "키와 몸무게를 입력하셔야만 합니다!!!"
            mainLabel.textColor = UIColor.red
            return false
        }
        
        mainLabel.text = "키와 몸무게를 입력해주세요"
        mainLabel.textColor = UIColor.red
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(#function)
        if segue.identifier == "toSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.modalPresentationStyle = .fullScreen
            
            let bmi = bmimanager.getBMI(height: heightTextField.text!, weight: weightTextField.text!)
            
            secondVC.bmi = bmi
        }
        
        heightTextField.text = ""
        weightTextField.text = ""
    }
}


extension ViewController: UITextFieldDelegate {
    func textField(_ textFeild: UITextField, shouldChangeCharactersIn rage: NSRange, relacementString string: String) -> Bool{
        print(string)
        
        if Int(string) != nil || string == "" {
            return true
        }
        return false // 글자입력 허용하지 않음
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if heightTextfield.text != "", weightTextField != "" {
            weightTextfield.resignFirstResponder()
            return true
        } else if heightTextfield.text != "" {
            weightTextfield.becomeFirstResponder()
            return true
        }
        return false
    }
    return false
}

func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if heightTextField.text != "", weightTextField.text != "" {
        weightTextField.resignFirstResponder()
    }
}



