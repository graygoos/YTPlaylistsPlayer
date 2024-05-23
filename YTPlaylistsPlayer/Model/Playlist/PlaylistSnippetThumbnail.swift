//
//  PlaylistSnippetThumbnail.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 20/05/2024.
//

import Foundation

struct PlaylistSnippetThumbnail: Decodable {
    let `default`: Default
    let medium: Medium
    let high: High
    let standard: Standard
    let maxres: Maxres

    struct Default: Decodable {
        let url: String
        let width: Int
        let height: Int
    }

    struct Medium: Decodable {
        let url: String
        let width: Int
        let height: Int
    }

    struct High: Decodable {
        let url: String
        let width: Int
        let height: Int
    }

    struct Standard: Decodable {
        let url: String
        let width: Int
        let height: Int
    }

    struct Maxres: Decodable {
        let url: String
        let width: Int
        let height: Int
    }
}
