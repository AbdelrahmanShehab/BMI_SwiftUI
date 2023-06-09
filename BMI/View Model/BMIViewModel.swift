//
//  BMIViewModel.swift
//  BMI
//
//  Created by Abdelrahman Shehab on 08/06/2023.
//

import SwiftUI

class BMIViewModel: ObservableObject {
    
   @Published var bmi: BMI?
    
    func calculateBMI(height: Double, width: Double) {
        let bmiValue = width / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More Pies")
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle!")
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less Pies!")
        }
     }
    
    
}
