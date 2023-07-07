//
//  ChipTextView.swift
//  spotify-a
//
//  Created by Javier Aponte on 16/06/23.
//

import SwiftUI

struct ChipTextView: View {
    let text: String = "LYRICS"
    var body: some View {
        Text(text)
            .font(.system(size: 8))
            .foregroundColor(.black)
            .fontWeight(.bold)
            .padding(2)
            .background(Color.gray)
            .clipShape(RoundedRectangle(cornerRadius: 2, style: .continuous))
    }
}

struct ChipTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChipTextView()
    }
}
