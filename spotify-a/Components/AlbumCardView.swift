//
//  AlbumCardView.swift
//  spotify-a
//
//  Created by Javier Aponte on 2/06/23.
//

import SwiftUI

struct AlbumCardView: View {
    var align: HorizontalAlignment = .leading
    var spacing: CGFloat = 15
    var image: String = ""
    var text: String = ""
    var size: CGFloat = 12
    var width: CGFloat = 114
    var height: CGFloat = 114
    var color: Color = .white
    var textWidth: CGFloat = 114
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: width, height: height)
            TextView(text: text, color: color, size: size).lineLimit(3).frame(width: textWidth, alignment: .leading)
        }
    }
}

struct AlbumCardView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumCardView(image: "liked", text: "Liked Songs", color: .black)
    }
}
