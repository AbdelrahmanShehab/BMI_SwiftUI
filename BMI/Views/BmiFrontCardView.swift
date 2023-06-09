//
//  BmiFrontCardView.swift
//  BMI
//
//  Created by Abdelrahman Shehab on 09/06/2023.
//

import SwiftUI

struct BmiFrontCardView: View {
    // MARK: -  PROPERTIES
    @Binding var degree: Double
    @ObservedObject var bmiValueViewModel: BMIViewModel
    
    // MARK: -  BODY
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .modifier(FlatGlassView())

            
            VStack(alignment: .center, spacing: 50) {
                Text("Your BMI")
                    .foregroundColor(Color("LightOlive"))
                .font(.system(.largeTitle, design: .default, weight: .heavy))
                
                Text("\(bmiValueViewModel.bmi?.value ?? 0.0, specifier: "%.1f")")
                    .foregroundColor(Color("Mostarda"))
                    .font(.system(.largeTitle, design: .default, weight: .heavy))
            }
        }
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
        .padding()
        .padding(.bottom, 10)
    }
}

// MARK: -  PREVIEW
//struct BmiFrontCardView_Previews: PreviewProvider {
//    @State static var angleDegree: Double = 0
//    static var previews: some View {
//        BmiFrontCardView(width: 300, height: 300, degree: $angleDegree, bmiViewModel: BMIViewModel().bmi?.value)
//    }
//}
