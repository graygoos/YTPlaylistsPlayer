//
//  PlaylistSnippet.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 20/05/2024.
//

import Foundation

struct PlaylistSnippet: Decodable {
    let publishedAt: String
    let channelId: String
    let title: String
    let description: String
    let thumbnails: PlaylistSnippetThumbnail
    let channelTitle: String
    let localized: Localized
    
    struct Localized: Decodable {
        let title: String
        let description: String
    }
}
