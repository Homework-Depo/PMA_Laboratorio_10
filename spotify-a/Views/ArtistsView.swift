//
//  ArtistsView.swift
//  spotify-a
//
//  Created by Javier Aponte on 7/07/23.
//

import SwiftUI

struct ArtistsView: View {
    
    @StateObject var artistsViewModel = ArtistsViewModel()
    
    var body: some View {
        ZStack{
            Color("dark")
                .ignoresSafeArea()
            ScrollView{
                VStack(alignment: .leading) {
                    VStack(alignment: .leading){
                        HStack(spacing: 20){
                            Image("Avatar")
                                .resizable()
                                .frame(width: 45, height: 45)
                            TextView(text:"Your Library")
                            Spacer()
                            IconImageView(icon:"magnifyingglass")
                            IconImageView(icon: "plus")
                        } .padding(10)
                        HStack(spacing :20){
                            Image("Close")
                                .resizable()
                                .frame(width: 35,height: 35)
                            Image("btnartist")
                                .resizable()
                                .frame(width: 70,height: 30)
                            
                            
                        }.padding([.horizontal],15)
                            .padding([.vertical],8)
                        Divider()
                            .background(.white)
                        VStack{
                            HStack(spacing:20){
                                Image("Union")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                TextView(text:"Recents" , size: 10)
                                
                                Spacer()
                                Image("lines")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                            }.padding([.horizontal],20)
                                .padding([.vertical],10)
                            HStack{
                                VStack(spacing:5){
                                    Image("michael_1")
                                        .resizable()
                                        .frame(width: 164, height: 164)
                                    Spacer()
                                    TextView(text: "Michael Jackson" , size: 10)
                                    TextView(text: "Arist" , size: 10)
                                }
                                
                                
                                Divider()
                                
                                VStack(spacing:5){
                                    Image("Tom")
                                        .resizable()
                                        .frame(width: 164, height: 164)
                                    Spacer()
                                    TextView(text: "Tom Odell" , size: 10)
                                    TextView(text: "Artist" , size: 10)
                                }
                            }.padding([.vertical],30)
                            
                            HStack{
                                VStack(spacing:5){
                                    Image("Selena_1")
                                        .resizable()
                                        .frame(width: 164, height: 164)
                                    Spacer()
                                    TextView(text: "Selena Gomez" , size: 10)
                                    TextView(text: "Arist" , size: 10)
                                    
                                }
                                .padding([.horizontal],15)
                                VStack(spacing:5){
                                    Image("Taylor")
                                        .resizable()
                                        .frame(width: 164, height: 164)
                                    Spacer()
                                    TextView(text: "Taylor Swift" , size: 10)
                                    TextView(text: "Artist" , size: 10)
                                }
                            }
                        }
                    }
                }
            }
        }.onAppear {
            Task {
                artistsViewModel.artists = await RequestAPI.getArtists()
            }
        }
    }
}

struct ArtistsView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistsView()
    }
}
