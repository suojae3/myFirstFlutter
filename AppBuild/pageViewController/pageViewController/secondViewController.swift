//
//  secondViewController.swift
//  pageViewController
//
//  Created by ㅣ on 2023/04/14.
//

import UIKit

class secondViewController: UIViewController {
    
    
    @IBOutlet weak var lyricsLabel: UILabel!
    
    
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var lineLabel: UILabel!
    
    
    @IBOutlet weak var switch1: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepper.value = Double(lyricsLabel.numberOfLines)
        
        lineLabel.text = "\(lyricsLabel.numberOfLines)"

    }
    
    
    @IBAction func stepperTapped(_ sender: UIStepper) {
        
        lyricsLabel.numberOfLines = Int(sender.value)
        
        lineLabel.text =  "\(lyricsLabel.numberOfLines)"
        
        
        switch1.isOn = lyricsLabel.minimumScaleFactor != 0 && lyricsLabel.adjustsFontSizeToFitWidth
    }
    
    
    @IBAction func switchTapped(_ sender: UISwitch) {
        lyricsLabel.minimumScaleFactor = sender.isOn ? 0.5 : 0.0
        
        
        
    }
    
    
    

}
