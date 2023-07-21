//
//  SecondViewController.swift
//  BMITest
//
//  Created by ㅣ on 2023/04/05.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var bmiNumberLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBOutlet weak var backButtonLabel: UIButton!


    
    var bmi: BMI?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        bmiNumberLabel.text = "\(bmi?.value)"
        bmiNumberLabel.backgroundColor = bmi?.bmiColor
        adviceLabel.text = bmi?.advice
        
        makeUI()
        
    }
    
    private func makeUI() {
        
        backButtonLabel.layer.cornerRadius = 8.0
        backButtonLabel.clipsToBounds = true
        
        bmiNumberLabel.layer.cornerRadius = 8.0
        bmiNumberLabel.clipsToBounds = true
        bmiNumberLabel.backgroundColor = .gray
        

    }
    
    
    @IBAction func reCalculateButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
  
}
