//
//  FlatGlassView.swift
//  BMI
//
//  Created by Abdelrahman Shehab on 09/06/2023.
//

import SwiftUI


struct FlatGlassView : ViewModifier {
    func body(content: Content) -> some View {
            content
            .frame(width: 300, height: 300, alignment: .center)
            .background(
                LinearGradient(gradient: Gradient(colors: [
                    Color("LightOlive"),
                    Color("OffWhite"),
                    Color("Mostarda")]), startPoint: .topLeading, endPoint: .bottomTrailing).opacity(0.6)
            ).blur(radius: 4.0)
            .background(.ultraThinMaterial)
            .cornerRadius(15)
//            .shadow(color: .black, radius: 4, x: -4, y: 4)
            
    }
}
