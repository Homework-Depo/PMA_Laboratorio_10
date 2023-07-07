//
//  Albums.swift
//  spotify-a
//
//  Created by Javier Aponte on 30/06/23.
//

import Foundation


// MARK: - Albums
public struct Albums: Codable {
    let albums: [Album]
}

// MARK: - Album
public struct Album: Codable {
    let album_type: String
    let artists: [Artist]
    let copyrights: [Copyright]
    let href: String
    let id: String
    let images: [SuperImage]
    let label, name: String
    let popularity: Int
    let tracks: Tracks
}

// MARK: - Artist
public struct Artist: Codable {
    let external_urls: ExternalUrls
    let href: String
    let id, name: String
    let uri: String
}

// MARK: - ExternalUrls
public struct ExternalUrls: Codable {
    let spotify: String
}

// MARK: - Copyright
public struct Copyright: Codable {
    let text, type: String
}

// MARK: - ExternalIDS
public struct ExternalIDS: Codable {
    let upc: String
}

// MARK: - SuperImage
public struct SuperImage: Codable {
    let height: Int
    let url: String
    let width: Int
}

// MARK: - Tracks
public struct Tracks: Codable {
    let href: String
    let items: [Item]
    let limit: Int
    let offset: Int
    let total: Int
}

// MARK: - Item
public struct Item: Codable {
    let artists: [Artist]
    let available_markets: [String]
    let disc_number, duration_ms: Int
    let explicit: Bool
    let external_urls: ExternalUrls
    let href: String
    let id: String
    let is_local: Bool
    let name: String
    let preview_url: String?
    let track_number: Int
    let uri: String
}
