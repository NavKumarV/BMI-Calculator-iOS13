//
//  BmiBrain.swift
//  BMI Calculator
//
//  Created by Naveen Kumar V on 02/09/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct BmiBrain {
     
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pie!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle! Ha aha", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else{
            bmi = BMI(value: bmiValue, advice: "Eat less pie!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBmiValue() -> String{
        let bmiString = String(format: "%.1f", bmi?.value  ?? 0.0)
        return bmiString
    }
    
    func getAdviceValue() -> String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColorValue() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
