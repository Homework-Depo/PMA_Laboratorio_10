//
//  ArtistAlbums.swift
//  spotify-a
//
//  Created by Javier Aponte on 7/07/23.
//

import Foundation

struct ArtistAlbums: Codable {
    let total: Int
    let items: [SimplifiedAlbum]
}

struct SimplifiedAlbum: Codable {
    let name: String
    let images: [SuperImage]
    let artists: [SimplifiedArtist]
}

struct SimplifiedArtist: Codable {
    let name: String
}
