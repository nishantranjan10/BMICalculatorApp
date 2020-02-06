//
//  CalculatorBrain.swift
//  BMICalculatorApp
//
//  Created by Ranjan, Nishant [GCB-OT NE] on 26/1/20.
//  Copyright © 2020 Ranjan, Nishant [GCB-OT NE]. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    
    mutating func calculateBMIValue(weight: Float, height: Float)  {
        
        let bmiValue =  weight/(height * height)
        print("bmi===============\(bmi)")
        
        if bmiValue < 18.5 {
            bmi = BMI(value :bmiValue, advice: "Eat More Pies", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }
        else if bmiValue < 24.9 {
             bmi = BMI(value :bmiValue, advice: "Fit Keep it", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else {
             bmi = BMI(value :bmiValue, advice: "Eat Less Pies", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    
    }
    
    func getBMIValue() -> String {
       return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
