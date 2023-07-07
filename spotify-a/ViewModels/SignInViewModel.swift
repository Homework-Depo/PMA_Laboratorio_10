//
//  SignInViewModel.swift
//  spotify-a
//
//  Created by Javier Aponte on 9/06/23.
//

import Foundation
import FirebaseAuth

class SignInViewModel: ObservableObject {
    
    // Función para hacer login con Firebase
    // Firebase Auth Email/Password
    func singIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) {
            authResult, error in
            
            if error != nil {
                // Error
                return
            }
        }
    }
    
    func singUp(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) {
            authResult, error in
            if error != nil {
                // error
                return
            }
            // Al home cambiado el estado de la aplicación
        }
        
    }
}
