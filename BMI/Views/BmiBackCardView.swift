//
//  BmiBackCardView.swift
//  BMI
//
//  Created by Abdelrahman Shehab on 09/06/2023.
//

import SwiftUI

struct BmiBackCardView: View {
    // MARK: -  PROPERTIES
    @Binding var degree: Double
    @ObservedObject var bmiAdviceViewModel: BMIViewModel
    
    
    // MARK: -  VIEW
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .modifier(FlatGlassView())
            
            Text(bmiAdviceViewModel.bmi?.advice ?? "No Advice")
                .foregroundColor(Color("LightOlive"))
                .font(.system(.largeTitle, design: .default, weight: .heavy))
        }//: ZSTACK
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
        .padding()
        .padding(.bottom, 10)
    }
}

// MARK: -  PREVIEW
//struct BmiBackCardView_Previews: PreviewProvider {
//    @State static var angleDegree: Double = 0
//    static var previews: some View {
//        BmiBackCardView(width: 300, height: 300, degree: $angleDegree)
//    }
//}
