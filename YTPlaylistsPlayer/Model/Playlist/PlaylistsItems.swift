//
//  PlaylistsItems.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 20/05/2024.
//

import Foundation

struct PlaylistsItems: Decodable {
    let kind: String
    let etag: String
    let id: String
    let snippet: PlaylistSnippet
}
