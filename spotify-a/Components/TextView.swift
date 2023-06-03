//
//  TextView.swift
//  spotify-a
//
//  Created by Javier Aponte on 2/06/23.
//

import SwiftUI

struct TextView: View {
    
    var text: String = ""
    var color: Color = .white
    var size: CGFloat = 24
    var weight: Font.Weight = .bold
    
    
    var body: some View {
        Text(text)
            .foregroundColor(color)
            .font(.system(size: size, weight: weight))
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
