//
//  YouTubeAPIService.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 07/05/2024.
//

import Foundation

class YouTubeAPIService {
    static let shared = YouTubeAPIService()
    private init() {}

    private let baseURL = "https://www.googleapis.com/youtube/v3/"

    func fetchPlaylists(channelId: String, apiKey: String, completion: @escaping (Result<[PlaylistsItems], Error>) -> Void) {
        let urlString = "\(baseURL)playlists?part=snippet&channelId=\(channelId)&maxResults=50&key=\(apiKey)"
        guard let url = URL(string: urlString) else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                return
            }

            do {
                let decodedData = try JSONDecoder().decode(PlaylistListResponse.self, from: data)
                completion(.success(decodedData.items))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }

    func fetchTracks(for playlistId: String, apiKey: String, completion: @escaping (Result<[TrackItem], Error>) -> Void) {
        let urlString = "\(baseURL)playlistItems?part=snippet&maxResults=50&playlistId=\(playlistId)&key=\(apiKey)"
        guard let url = URL(string: urlString) else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                return
            }

            do {
                let decodedData = try JSONDecoder().decode(TrackListResponse.self, from: data)
                completion(.success(decodedData.items))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
