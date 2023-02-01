//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 박성원 on 2023/02/02.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

class CalculateBrain {
    
    var weight: Float = 0.0
    var height: Float = 0.0
    
    
    func getBmi() -> Float {
        return weight / pow(height, 2)
    }
    
    func displayBmi() -> String {
        return String(format: "%0.1f", getBmi())
    }
    
}

struct CalculateBrainA {
    var bmi: Float?
    
    func getBMIValue() -> String {
        if let safeBmi = bmi {
            let bmiToDecimal = String(format: "%.1f", safeBmi)
            return bmiToDecimal
        } else {
            return "0.0"
        }
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
}
