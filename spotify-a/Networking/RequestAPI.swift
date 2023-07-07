//
//  RequestAPI.swift
//  spotify-a
//
//  Created by Javier Aponte on 30/06/23.
//

import Foundation

class RequestAPI {
    static let endpoint: String = "https://spotify-3atoternv-tecsup2023.vercel.app/api/spotify"
    static let endpointAlbums: String = "https://api.spotify.com/v1/albums?ids=382ObEPsp2rxGrnsizN5TX,1A2GTWGtFfWp7KSQTwWOyo,2noRn2Aes5aoNVsU6iWThc"
    static let endpointArtists: String =
    "https://api.spotify.com/v1/artists?ids=2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6"
    
    
    static func getToken() async {
        guard let url = URL(string: endpoint) else { return }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let authorization = try? JSONDecoder().decode(Authorization.self, from: data) {
                let user = UserDefaults.standard
                print("token", authorization.access_token)
                user.set (authorization.access_token, forKey: "access_token")
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    static func getAlbums() async -> Albums? {
        guard let url = URL(string: endpointAlbums) else { return nil }
        var request = URLRequest (url: url)
        request.httpMethod = "GET"
        request.setValue( "Bearer " + (UserDefaults.standard.string(forKey: "access_token") ?? ""), forHTTPHeaderField: "Authorization")
        do {
            let (data, _) = try await URLSession.shared.data(for: request)
            if let albums = try? JSONDecoder().decode(Albums.self, from: data) {
                return albums
            }
        } catch let error {
            print("Error")
            print (error.localizedDescription)
        }
        return nil
    }
    
    static func getArtists() async -> SpotifyArtists? {
        guard let url = URL(string: endpointArtists) else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue( "Bearer " + (UserDefaults.standard.string(forKey: "access_token") ?? ""), forHTTPHeaderField: "Authorization")
        do {
            let (data, _) = try await URLSession.shared.data(for: request)
            if let artists = try? JSONDecoder().decode(SpotifyArtists.self, from: data) {
                return artists
            }
        } catch let error {
            print("Error")
            print (error.localizedDescription)
        }
        return nil
    }
    
    static func getArtistAlbums(id: String) async -> ArtistAlbums? {
        let artistAlbumsEndpoint = "https://api.spotify.com/v1/artists/\(id)/albums?limit=8"
        guard let url = URL(string: artistAlbumsEndpoint) else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue( "Bearer " + (UserDefaults.standard.string(forKey: "access_token") ?? ""), forHTTPHeaderField: "Authorization")
        do {
            let (data, _) = try await URLSession.shared.data(for: request)
            if let albums = try? JSONDecoder().decode(ArtistAlbums.self, from: data) {
                return albums
            }
        } catch let error {
            print("Error")
            print (error.localizedDescription)
        }
        return nil
    }
}

