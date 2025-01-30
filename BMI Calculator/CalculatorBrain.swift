//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Adrian Dardon Flores on 29/01/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//


import UIKit

struct CalculatorBrain {
    
    var bmi:BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float){
       let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            
            bmi = .init(value: bmiValue, Advice: "Eat more pies!", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        }else if  bmiValue < 24.9{
            
            bmi = .init(value: bmiValue, Advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }else {
            
            bmi = .init(value: bmiValue, Advice: "Eat less pies!", color: #colorLiteral(red: 0.7459569914, green: 0.08118003509, blue: 0.1044446258, alpha: 1))
        }
       
    
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? .red
    }
    
    func getAdvice() -> String {
        return bmi?.Advice ?? ""
    }
}
