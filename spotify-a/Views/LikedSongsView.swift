//
//  LikedSongs.swift
//  spotify-a
//
//  Created by Javier Aponte on 16/06/23.
//

import SwiftUI

struct LikedSongsView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .center)
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 12) {
                        TextView(text:"Liked Songs", size: 24)
                        TextView(text: "10 songs", color: .gray, size: 12)
                        
                    }
                    .padding([.horizontal], 16)
                    .padding([.top], 120)
                    HStack() {
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image("play_black")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 22, height: 25)
                                .padding(20)
                                .background(Color("primary"))
                                .clipShape(Circle())
                            
                        }
                    }
                    
                    SongItem()
                    SongItem(image: "heal_the_world", songName: "Heal The World")
                    SongItem(image: "heal", songName: "Heal", songArtist: "Tom Odell")
                    SongItem(image: "love_me", songName: "Love Me", songArtist: "Justin Bieber")
                    SongItem(image: "lonely", songName: "Lonely", songArtist: "Akon")
                    SongItem(image: "love_me", songName: "My World 2.0", songArtist: "Justin Bieber")
                    SongItem()
                    SongItem()
                }
            }.padding()
        }
    }
}

struct LikedSongs_Previews: PreviewProvider {
    static var previews: some View {
        LikedSongsView()
    }
}
