//
//  TrackItem.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 20/05/2024.
//

import Foundation

struct TrackItem: Decodable {
    let kind: String
    let etag: String
    let id: String
    let snippet: TrackSnippet
}


// Mock data for preview
//let mockTrackItem = TrackItem(
//    kind: "youtube#playlistItem",
//    etag: "etag",
//    id: "1",
//    snippet: TrackItem.TrackSnippet(
//        publishedAt: "2023-01-01T00:00:00Z",
//        channelId: "channelId",
//        title: "Sample Track Title",
//        description: "Sample Description",
//        position: 1,
//        resourceId: TrackItem.TrackSnippet.ResourceId(kind: "youtube#video", videoId: "dQw4w9WgXcQ")
//    )
//)
