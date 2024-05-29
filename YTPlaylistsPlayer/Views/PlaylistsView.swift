//
//  PlaylistsView.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 07/05/2024.
//

import SwiftUI

struct PlaylistsView: View {
    @State private var playlists: [PlaylistsItems] = []
    @State private var showSettingsScreen = false
    
    var body: some View {
        NavigationStack {
            List(playlists, id: \.id) { playlist in
                NavigationLink(destination: PlaylistDetailView(playlistId: playlist.id, playlistName: playlist.snippet.title)) {
                    Text(playlist.snippet.title)
                }
            }
            .navigationTitle("My YouTube Playlists")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        self.showSettingsScreen.toggle()
                    }) {
                        Image(systemName: "gear")
                    }
                    .sheet(isPresented: $showSettingsScreen, onDismiss: {
                        
                    }, content: {
                        SettingsScreen()
                    })
                }
            }
            .onAppear {
                fetchPlaylists()
            }
        }
    }
    
    func fetchPlaylists() {
        guard let apiKey = ProcessInfo.processInfo.environment["YOUTUBE_API_KEY"],
              let channelId = ProcessInfo.processInfo.environment["YOUTUBE_CHANNEL_ID"] else {
            print("API Key or Channel ID not found")
            return
        }
        
        YouTubeAPIService.shared.fetchPlaylists(channelId: channelId, apiKey: apiKey) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let playlists):
                    self.playlists = playlists
                case .failure(let error):
                    print("Error fetching playlists: \(error)")
                }
            }
        }
    }
}


#Preview {
    PlaylistsView()
}
