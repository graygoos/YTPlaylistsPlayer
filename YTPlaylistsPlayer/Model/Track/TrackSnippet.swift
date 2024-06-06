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
    let thumbnails: Thumbnails?
    
    struct ResourceId: Decodable {
        let kind: String
        let videoId: String
    }
    
    struct Thumbnails: Decodable {
        let `default`: Thumbnail
        let medium: Thumbnail
        let high: Thumbnail
        // Add more sizes if needed
    }
    
    struct Thumbnail: Decodable {
        let url: String
        let width: Int
        let height: Int
        let medium: ThumbnailSize?
        
        struct ThumbnailSize: Decodable {
            let url: String
        }
    }
}
