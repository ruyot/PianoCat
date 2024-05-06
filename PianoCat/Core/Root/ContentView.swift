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
            Color.black.edgesIgnoringSafeArea(.all) // Filling entire screen with black
            VStack(alignment: .center) {
                Image("PianoCat")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                Text("Piano Cat")
                    .font(.custom("AvenirNext-Medium", size: 40))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 100) // Move the title up from the bottom
                Text("Your Personal Music Theory Tutor")
                    .font(.custom("AvenirNext-Regular", size: 20))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 240)
                    .padding(.top, -100)
                Button("Sign-Up") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                   
                }
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
