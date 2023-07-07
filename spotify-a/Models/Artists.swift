//
//  Artists.swift
//  spotify-a
//
//  Created by Javier Aponte on 7/07/23.
//

import Foundation

struct SpotifyArtists: Codable {
    let artists: [SpotifyArtist]
}

struct SpotifyArtist: Codable {
    let external_urls: External_urls
    let followers: Followers
    let genres: [String]
    let href: String
    let id: String
    let images: [ArtistImage]
    let name: String
    let popularity: Int
    let type: String
    let uri: String
}

struct External_urls: Codable {
    let spotify: String
}

struct Followers: Codable {
    let href: String?
    let total: Int
}

struct ArtistImage: Codable {
    let url: String
    let height: Int
    let width: Int
}
