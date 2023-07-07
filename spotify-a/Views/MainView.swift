//
//  MainView.swift
//  spotify-a
//
//  Created by Linder Anderson Hassinger Solano    on 26/05/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            LikedSongsView()
                .tabItem {
                    Label("Library", systemImage: "books.vertical.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }.accentColor(.white)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
