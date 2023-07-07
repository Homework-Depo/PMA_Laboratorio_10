//
//  Authorization.swift
//  spotify-a
//
//  Created by Javier Aponte on 30/06/23.
//

import Foundation

struct Authorization: Codable {
    let access_token: String
    let token_type: String
    let expires_in: Int
}
