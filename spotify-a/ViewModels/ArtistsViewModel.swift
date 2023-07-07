//
//  ArtistsViewModel.swift
//  spotify-a
//
//  Created by Javier Aponte on 7/07/23.
//

import Foundation

class ArtistsViewModel: ObservableObject {
    @Published var artists: SpotifyArtists? = nil
}
