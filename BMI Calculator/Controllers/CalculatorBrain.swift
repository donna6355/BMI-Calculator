//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Donna on 2022/05/26.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    var bmi:BMI?
    
    mutating func calculateBMI(weight:Float, height:Float){
        let bmiValue = weight / pow(height,2)
        
        if bmiValue < 18.5 {
            
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        }else if bmiValue < 24.9{
            
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.green)
        }else{
            
            bmi = BMI(value: bmiValue, advice: "Ear less pies", color: UIColor.red)
        }
        
    }
    
    func getBMIValue()->String{
//        if let safeBmi = bmi{
//            return String(format:"%.1f",safeBmi)
//        }else{
//            return "0.0"
//        }
        return String(format:"%.1f",bmi?.value ?? 0.0)
    }
    func getAdvice()->String{
        return bmi?.advice ?? "No advice"
    }
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.green
    }
}
