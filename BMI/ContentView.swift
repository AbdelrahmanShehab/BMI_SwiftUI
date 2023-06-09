//
//  ContentView.swift
//  BMI
//
//  Created by Abdelrahman Shehab on 08/06/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: -  PROPERTIES
    @State var frontDegree: Double = 0.0
    @State var backDegree: Double = -90.0
    @State var isFlipped: Bool = false
    @State private var heightSliderValue: Double = .zero
    @State private var widthtSliderValue: Double = .zero
    @State private var bmiValue: Double?
    @State private var bmiAdvice: String?
    @StateObject private var bmiViewModel = BMIViewModel()
    
    let width: CGFloat = 300
    let height: CGFloat = 300
    let durationAndDelay: CGFloat = 0.4
    
    // MARK: -  FUNCTION
    func flipCard() {
        isFlipped.toggle()
        if isFlipped {
            withAnimation(.easeOut(duration: durationAndDelay).delay(durationAndDelay)) {
                backDegree = 0
            }
            withAnimation(.easeOut(duration: durationAndDelay)) {
                frontDegree = 90
            }
        } else {
            withAnimation(.easeOut(duration: durationAndDelay).delay(durationAndDelay)) {
                frontDegree = 0
            }
            withAnimation(.easeOut(duration: durationAndDelay)) {
                backDegree = -90
            }
        }
    }
    
    // MARK: -  BODY
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 20) {
                Spacer()
                
                VStack {
                    Text("Calculate Your BMI")
                        .font(.system(.largeTitle))
                        .bold()
                        .foregroundStyle(
                            LinearGradient(colors:[
                                Color("LightOlive"),
                                Color("DarkOlive"),
                                Color("LightOlive")
                            ], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                }
                .frame(width:350, height: 50, alignment: .center)
                .background(.thinMaterial)
                .cornerRadius(15)
                
                // MARK: -  FLIP CARD
                ZStack {
                    BmiFrontCardView(degree: $frontDegree, bmiValueViewModel: bmiViewModel)
                        
                    BmiBackCardView(degree: $backDegree, bmiAdviceViewModel: bmiViewModel)

                }
                .onTapGesture {
                    flipCard()
                }
                .padding()
                .padding(.bottom, 10)
                
                // MARK: -  SLIDERS
                VStack(spacing: 15) {
                    SliderView(sliderValue: $heightSliderValue, endRange: 3, endRangeInString: "3 m", sliderName: "Height")
                    
                    SliderView(sliderValue: $widthtSliderValue, endRange: 200, endRangeInString: "200 kg", sliderName: "Width")
                    
                }//: VSTACK
                .modifier(FlatGlassSlider())
                .padding(.top, 5)
                
                // MARK: -  BMI Calculation
                Button {
                    bmiViewModel.calculateBMI(height: heightSliderValue, width: widthtSliderValue)
                    
                } label: {

                    Text("Calculate")
                        .modifier(FlatGlassButton())
                    
                }//:Button
                        
            }//: VSTACK
            .padding()
        .padding(.bottom, 30)
        }//: ZSTACK
        .background(
            BackgroundImageView()
                .blur(radius: 4.0)
        )
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
