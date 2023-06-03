//
//  spotify_aApp.swift
//  spotify-a
//
//  Created by Linder Anderson Hassinger Solano    on 26/05/23.
//

import SwiftUI

@main
struct spotify_aApp: App {
    
    @StateObject var appState: AppState = .shared
    var body: some Scene {
        WindowGroup {
            switch appState.currentScreen {
            case .launch:
                LaunchView()
                    .environmentObject(appState)
            case .signIn:
                MainView()
                    .environmentObject(appState)
            case .main:
                MainView()
                    .environmentObject(appState)
            }
        }
    }
}
