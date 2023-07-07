//
//  TextField.swift
//  spotify-a
//
//  Created by Javier Aponte on 9/06/23.
//

import SwiftUI

struct CustomTextField: View {
    
    @State var value: String = ""
    var placeHolder: String = ""
    var color: Color = .white
    var radius: CGFloat = 24
    var isSecure: Bool = false
    var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        ZStack(alignment: .leading) {
            if value.isEmpty {
                Text(placeHolder)
                    .foregroundColor(color)
                    .padding(.leading)
            }
            
            if isSecure {
                SecureField("", text: $value)
                    .foregroundColor(color)
                    .padding()
            } else {
                TextField("", text: $value)
                    .foregroundColor(color)
                    .autocapitalization(.none)
                    .autocorrectionDisabled(true)
                    .keyboardType(keyboardType)
                    .padding()
            }
        }.overlay(RoundedRectangle(cornerRadius: radius)
            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
        )
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField()
    }
}
