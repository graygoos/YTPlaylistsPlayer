//
//  PlaylistsDetailView.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 07/05/2024.
//

import SwiftUI

struct PlaylistDetailView: View {
    let playlistId: String
    let playlistName: String

    @State private var tracks: [TrackItem] = []

    var body: some View {
        List(tracks, id: \.id) { track in
            NavigationLink(destination: TrackDetailView(track: track)) {
                Text("\(track.snippet.position + 1). \(track.snippet.title)")
            }
        }
        .navigationTitle(playlistName)
        .onAppear {
            fetchTracks()
        }
    }

    func fetchTracks() {
        guard let apiKey = ProcessInfo.processInfo.environment["YOUTUBE_API_KEY"] else {
            print("API Key not found")
            return
        }
        
        YouTubeAPIService.shared.fetchTracks(for: playlistId, apiKey: apiKey) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let tracks):
                    self.tracks = tracks
                case .failure(let error):
                    print("Error fetching tracks: \(error)")
                }
            }
        }
    }
}

struct PlaylistDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistDetailView(playlistId: "PLy7cyrIvU316YLwy7aKs-brisr3dI-bjv", playlistName: "Manliness")
    }
}

