//
//  IconImageView.swift
//  spotify-a
//
//  Created by Linder Anderson Hassinger Solano    on 26/05/23.
//

import SwiftUI

struct IconImageView: View {
    
    var icon: String = "bell"
    var color: Color = .white
    var size: CGFloat = 22
    var weight: Font.Weight = .bold
    
    var body: some View {
        Image(systemName: icon)
            .foregroundColor(color)
            .font(.system(size: size, weight: weight))
    }
}

struct IconImageView_Previews: PreviewProvider {
    static var previews: some View {
        IconImageView(color: .black)
    }
}
