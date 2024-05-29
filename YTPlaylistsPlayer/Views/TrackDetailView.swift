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
        VStack {
            Text(track.snippet.title)
                .font(.title3)
//                .padding()

            if let videoId = track.snippet.resourceId?.videoId {
                PlayerView(videoID: videoId)
                    .frame(height: 300)
            } else {
                Text("No video available")
                    .foregroundColor(.red)
            }
            /*
            HStack {
                Button("Play") {
                    player.play()
                }
                
                Button("Stop") {
                    player.stop()
                }
            }
             */
            Spacer()
        }
        
    }
}



//#Preview {
//    TrackDetailView(track: )
//}
