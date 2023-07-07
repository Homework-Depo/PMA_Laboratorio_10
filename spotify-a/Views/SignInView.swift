//
//  SignInView.swift
//  spotify-a
//
//  Created by Javier Aponte on 9/06/23.
//

import SwiftUI

struct SignInView: View {
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        ZStack {
            Color("dark").ignoresSafeArea()
            VStack(alignment: .center, spacing: 10) {
                Spacer()
                Image("white_logo")
                    .resizable()
                    .frame(width: 70, height: 70)
                VStack {
                    TextView(text: "Millions of songs.")
                    TextView(text: "Free on Spotify")
                    
                    VStack(spacing: 20) {
                        CustomTextField(value: email, placeHolder: "Email", keyboardType: .emailAddress)
                        CustomTextField(value: password, placeHolder: "Password", isSecure: true)
                    }.padding()
                }
                
                VStack(spacing: 0) {
                    Button {
                        print("funciona")
                    } label: {
                        Text("Log in")
                            .foregroundColor(Color(.white))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color("primary"))
                            .font(.system(size: 16, weight: .bold))
                            .cornerRadius(24)
                            .padding()
                    }
                    
                    Button {
                        print("funciona")
                    } label: {
                        HStack {
                            Image("google")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text("Continue with Google")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                        }.padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 26)
                                    .stroke(.white, lineWidth: 1)
                            )
                            .font(.system(size: 16, weight: .bold))
                            .padding()
                    }
                }
                
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
