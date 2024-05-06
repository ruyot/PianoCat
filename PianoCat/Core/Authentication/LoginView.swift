//
//  LoginView.swift
//  PianoCat
//
//  Created by Tahmeed Tabeeb on 2024-05-06.
//

import SwiftUI

#if os(iOS) || os(tvOS)
import UIKit
#elseif os(macOS)
import AppKit
#endif

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all) // Filling entire screen with black
                // Image
                VStack(alignment: .center) {
                    Image("PianoCat")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    // Title
                    Text("Piano Cat")
                        .font(.custom("AvenirNext-Medium", size: 40))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 100) // Move the title up from the bottom
                    // Description
                    Text("Your Personal Music Theory Tutor")
                        .font(.custom("AvenirNext-Regular", size: 20))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 240)
                        .padding(.top, -100)
                    
                    // Form fields
                    VStack(spacing: 24) {
                        InputView(text: $email, 
                                  title: "Email   Address",
                                  placeholder: "name@example.com")
                        
                        InputView(text: $password, 
                                  title: "Password",
                                  placeholder: "Enter your password",
                                  isSecureField: true)
                            
                    }
                    .padding(.horizontal)
                    .padding(.top, -180)
                    
                    // sign in button
                    
                    Button {
                        print("Log user in..")
                    } label: {
                        HStack {
                            Text("SIGN IN")
                                .fontWeight(.semibold)
                            Image(systemName: "arrow.right")
                        }
                        .foregroundColor(.white)
                        .frame(width: platformButtonWidth() - 32, height: 48)
                    }
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
                    .padding(.bottom, 120)
                    
                    
                    Spacer()
                    
                    // sign up button
                    
                    NavigationLink {
                        
                    } label: {
                        HStack {
                            Text("Don't have an account?")
                            Text("Sign up")
                            .fontWeight(.bold)
                        }
                    }   .font(.system(size: 14))
                    
                    
                }
            }
        }
    }
    // Function to determine button width based on platform
    private func platformButtonWidth() -> CGFloat {
    #if os(iOS) || os(tvOS)
        return UIScreen.main.bounds.width - 32
    #elseif os(macOS)
        return NSScreen.main?.visibleFrame.width ?? 200
    #endif
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
