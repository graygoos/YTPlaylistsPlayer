//
//  TrackSnippet.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 20/05/2024.
//

import Foundation

struct TrackSnippet: Decodable {
    let publishedAt: String
    let channelId: String
    let title: String
    let description: String
    let position: Int
    let resourceId: ResourceId?

    struct ResourceId: Decodable {
        let kind: String
        let videoId: String
    }
}
