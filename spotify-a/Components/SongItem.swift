//
//  SongItem.swift
//  spotify-a
//
//  Created by Javier Aponte on 16/06/23.
//

import SwiftUI

struct SongItem: View {
    var image: String = "remember_the_time"
    var songName: String = "Remember The Time"
    var songArtist: String = "Michael Jackson"
    
    var body: some View {
        HStack(alignment: .center, spacing: 20){
            Image(image)
            VStack(alignment: .leading, spacing: 4) {
                TextView(text: songName, size: 14)
                HStack(spacing: 4) {
                    ChipTextView()
                    TextView(text: songArtist, color: .gray, size: 10)
                }
                
            }.frame(width: 195, alignment: .leading)
            VStack(alignment: .center) {
                IconImageView(icon: "heart.fill", color: Color("primary"), size: 18)
            }.frame(width: 48, height: 48)
            
            Image("vertical_ellipsis")
        }
    }
}

struct SongItem_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("dark")
                .ignoresSafeArea()
            SongItem()
        }
    }
}
