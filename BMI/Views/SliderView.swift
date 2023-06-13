//
//  SliderView.swift
//  BMI
//
//  Created by Abdelrahman Shehab on 09/06/2023.
//

import SwiftUI

struct SliderView: View {
    // MARK: -  PROPERTIES
    @Binding var sliderValue: Double
    let endRange: Double
    let endRangeInString: String
    let sliderName: String
    
    // MARK: -  BODY
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            
            HStack {
                Text("\(sliderName)")
                    .font(.system(.subheadline, design: .serif, weight: .semibold))
                
                Spacer()
                
                Text("\(sliderValue, specifier: "%.2f")")
                    .font(.system(.title3, design: .serif, weight: .semibold))
            }//: HSTACK
            
            Slider(
                value: $sliderValue,
                in: 1...endRange,
                minimumValueLabel: Text("0")
                    .font(.system(.subheadline, design: .serif, weight: .semibold)),
                maximumValueLabel: Text("\(endRangeInString)")
                    .font(.system(.subheadline, design: .serif, weight: .semibold)),
                label: {Text("Values from 0 to \(endRangeInString)")}
            )
        }//: VSTACK
        .padding()
    }
}

// MARK: -  PREVIEW
struct SliderView_Previews: PreviewProvider {
    @State static var value: Double = 5
    static var previews: some View {
        SliderView(sliderValue: $value, endRange: 10, endRangeInString: "10 m", sliderName: "Height")
    }
}
