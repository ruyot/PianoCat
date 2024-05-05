//
//  ContentView.swift
//  PianoCat
//
//  Created by Tahmeed Tabeeb on 2024-05-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all) // Fill entire screen with black color
            VStack {
                Spacer() // Pushes the title to the bottom
                Text("Piano Cat")
                    .font(.custom("DamascusLight", size: 40))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 200) // Move the title up from the bottom
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11") //  Desired device
            .previewDisplayName("Piano Cat Preview") // Display name for the preview
    }
}
