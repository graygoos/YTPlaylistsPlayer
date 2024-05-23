//
//  PlaylistListResponse.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 20/05/2024.
//

import Foundation

struct PlaylistListResponse: Decodable {
    let kind: String
    let etag: String
    let pageInfo: PageInfo
    let items: [PlaylistsItems]

    struct PageInfo: Decodable {
        let totalResults: Int
        let resultsPerPage: Int
    }
}
