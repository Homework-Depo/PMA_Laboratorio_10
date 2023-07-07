//
//  HomeView.swift
//  spotify-a
//
//  Created by Linder Anderson Hassinger Solano    on 26/05/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color("dark")
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 30) {
                    HStack(spacing: 20) {
                        TextView(text: "Good Morning")
                        Spacer()
                        IconImageView(icon: "bell")
                        IconImageView(icon: "clock")
                        IconImageView(icon: "gear")
                    }
                    TextView(text: "Recently Played")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            AlbumCardView(image: "liked", text: "Liked Songs")
                            AlbumCardView(image: "selena", text: "For You")
                            AlbumCardView(image: "michael", text: "Dangerous")
                        }
                    }
                    TextView(text: "To get you started")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    ScrollView(.horizontal, showsIndicators: false) {
                        if homeViewModel.albums?.albums != nil {
                            HStack(spacing: 15) {
                                ForEach(homeViewModel.albums!.albums, id: \.id) {
                                    album in
                                    AlbumCardView(image: album.images[0].url, text: album.name, width: 144, height: 144, color: Color("spotifygrey"), textWidth: 144)
                                }
                                /*AlbumCardView(image: "dailymix2", text: "Drake, Michael Jackson, Dua Lipa and more", width: 144, height: 144, color: Color("spotifygrey"), textWidth: 144)
                                 AlbumCardView(image: "dailymix1", text: "Justin Bieber, Michael Jackson, Dua Lipa and more", width: 144, height: 144, color: Color("spotifygrey"), textWidth: 144)
                                 AlbumCardView(image: "dailymix2", text: "The Weeknd, Michael Jackson, Dua Lipa and more", width: 144, height: 144, color: Color("spotifygrey"), textWidth: 144)*/
                            }
                        }
                    }
                }
            }.padding()
        }.onAppear {
            Task {
                homeViewModel.albums = await RequestAPI.getAlbums()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
