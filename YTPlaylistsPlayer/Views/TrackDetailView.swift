//
//  TrackDetailView.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 20/05/2024.
//

import SwiftUI
import AVKit
import YouTubeiOSPlayerHelper


struct TrackDetailView: View {
    let track: TrackItem
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                if let videoId = track.snippet.resourceId?.videoId {
                    PlayerView(videoID: videoId)
                        .frame(height: 300)
                } else {
                    Text("No video available")
                        .foregroundColor(.red)
                }
                
                Text(track.snippet.title)
                    .font(.largeTitle)
                    .padding(.bottom, 8)
                
                Text("Published at: \(track.snippet.publishedAt)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(track.snippet.description)
                    .font(.body)
                
                Spacer()
            }
            .padding()
            .navigationTitle(track.snippet.title)
        }
        
    }
}


//#Preview {
//    TrackDetailView(track: )
//}
