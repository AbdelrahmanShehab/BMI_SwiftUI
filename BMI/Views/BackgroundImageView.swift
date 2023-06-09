//
//  BackgroundImageView.swift
//  BMI
//
//  Created by Abdelrahman Shehab on 09/06/2023.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        GeometryReader { geometry in
            Image("bmi")
                .antialiased(true)
                .resizable()
                .scaledToFill()
                .frame(width: geometry.size.width)
        }
        .ignoresSafeArea(.all)
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
