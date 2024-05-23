//
//  TrackListResponse.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 20/05/2024.
//

import Foundation

struct TrackListResponse: Decodable {
    let kind: String
    let etag: String
    let pageInfo: PageInfo
    let items: [TrackItem]

    struct PageInfo: Decodable {
        let totalResults: Int
        let resultsPerPage: Int
    }
}
