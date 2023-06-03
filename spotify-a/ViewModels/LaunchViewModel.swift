//
//  LaunchViewModel.swift
//  spotify-a
//
//  Created by Javier Aponte on 2/06/23.
//

import Foundation

class LaunchViewModel: ObservableObject {
    
    var appState: AppState = .shared
    
    init() {
        print("ESTAMOS EN EL LAUNCHVIEW")
        appState.currentScreen = .main
    }
}

