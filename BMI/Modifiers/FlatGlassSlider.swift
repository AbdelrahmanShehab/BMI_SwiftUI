//
//  FlatGlassSlider.swift
//  BMI
//
//  Created by Abdelrahman Shehab on 09/06/2023.
//

import SwiftUI

struct FlatGlassSlider: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(.ultraThinMaterial)
            .cornerRadius(15)
            .shadow(color: .gray, radius: 5, x: -5, y: 5)
        
    }
}


