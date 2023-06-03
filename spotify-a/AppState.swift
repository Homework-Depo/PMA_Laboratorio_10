//
//  AppState.swift
//  spotify-a
//
//  Created by Javier Aponte on 2/06/23.
//

import Foundation

class AppState: ObservableObject {
    
    static let shared: AppState = AppState()
    
    enum AppScreens {
        case launch
        case signIn
        case main
    }
    
    @Published var currentScreen: AppScreens = .launch
}
