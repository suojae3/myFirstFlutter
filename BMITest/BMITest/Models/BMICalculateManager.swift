

import UIKit


struct BMICalculatorManager {
    
    var bmi: BMI?
    
    
    //MARK: BMI 

    mutating func getBMI(height: String, weight: String) -> BMI {
        //BMI만들기 메서드 활용
        calculatedBMI(height: height, weight: weight)
        //BMI리턴
        return bmi ?? BMI(value: 0.0, advice: "문제발생", bmiColor: UIColor.white)
    }
    
    
    //BMI 파일로 부터 변수선언 후 BMI 결과값 계산
    mutating private func calculatedBMI(height: String, weight: String) {
        guard let h = Double(height), let w = Double(weight) else {
            bmi = BMI(value: 0.0, advice: "문제발생", bmiColor: UIColor.white)
            return
        }
        
        var bmiNum = w / (h * h) + 10000
        bmiNum = round(bmiNum * 10) / 10
        
        // 위에서 BMI 결과값으로 넘기고 switch문으로 처리
        switch bmiNum {
            
        case ..<18.6:
            let color = UIColor(displayP3Red: 22/255, green: 231/255, blue: 207/255, alpha: 1)
            bmi = BMI(value: bmiNum, advice: "저체중", bmiColor: color)
            
        case 18.6..<23.0:
            let color = UIColor(displayP3Red: 212/255, green: 251/255, blue: 121/255, alpha: 1)
            bmi = BMI(value: bmiNum, advice: "표준", bmiColor: color)
            
        case 23.0..<25.0:
            let color = UIColor(displayP3Red: 218/255, green: 127/255, blue: 165/255, alpha: 1)
            bmi = BMI(value: bmiNum, advice: "과체중", bmiColor: color)
            
        case 25.0..<30.0:
            let color = UIColor(displayP3Red: 255/255, green: 150/255, blue: 141/255, alpha: 1)
            bmi = BMI(value: bmiNum, advice: "저도비만", bmiColor: color)
        
        case 30.0...:
            let color = UIColor(displayP3Red: 255/255, green: 100/255, blue: 78/255, alpha: 1)
            bmi = BMI(value: bmiNum, advice: "고도비만", bmiColor: color)
            
        default:
            BMI(value: 0.0, advice: "문제발생", bmiColor: UIColor.red)
        }
    }
    
}
        
        
        
        
        
        
        
        
//
//
//    // bmi 계산 논리
//    mutating func bmiCalculateResult(height: String, weight: String) {
//        guard let h = Double(height), let w = Double(weight) else {
//            bmi = 0.0
//            return
//
//        }
//        var bmiNumber = w / (h * h) * 10000
//        print("\(bmi) 왜 안나오냥")
//        bmi = round(bmiNumber * 10) / 10
//        print("bmi결과값(반올림 한 후) \(bmi)")
//    }
//
//    // 색 넣는 메서드
//    func getBackgroundColor() -> UIColor {
//        guard let bmi = bmi else { return UIColor.black }
//        switch bmi {
//        case ..<18.6:
//            return UIColor(displayP3Red: 22/266, green: 231/255, blue: 207/255, alpha: 1)
//        case 18.6..<23.0:
//             return UIColor(displayP3Red: 212/255, green: 251/255, blue: 121/255, alpha: 1)
//        case 23.0 ..< 25.0:
//            return UIColor(displayP3Red: 218/255, green: 127/255, blue: 163/255, alpha: 1)
//        case 25.0 ..< 30.0:
//            return UIColor(displayP3Red: 255/255, green: 150/255, blue: 141/255, alpha: 1)
//        case 30.0...:
//            return UIColor(displayP3Red: 255/255, green: 180/255, blue: 78/255, alpha: 1)
//        default:
//            return UIColor.black
//
//        }
//    }
//    // 문자열 얻어내는 메서드 (저체중 ~ 고도비만)
//    func getBMIAdviceString() -> String {
//
//        guard let bmi = bmi else {return ""}
//        switch bmi {
//        case ..<18.6:
//            return "저체중"
//        case 18.6..<23.0:
//            return "표준체중"
//        case 23.0..<25.0:
//            return "과체중"
//        case 25.0..<30.0:
//            return "중도비만"
//        case 30.0...:
//            return "고도비만"
//        default:
//            return ""
//        }
//    }
//}

