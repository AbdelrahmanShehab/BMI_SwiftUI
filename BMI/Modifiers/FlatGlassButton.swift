//
//  FlatGlassButton.swift
//  BMI
//
//  Created by Abdelrahman Shehab on 09/06/2023.
//

import SwiftUI

struct FlatGlassButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 300, height: 50)
            .background(.thinMaterial)
            .cornerRadius(15)
            .shadow(color: .gray, radius: 5, x: -3, y: 3)
            .foregroundColor(Color("LightOlive"))
            .font(.system(size: 25, weight: .heavy, design: .rounded))

        
    }
}

