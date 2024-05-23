//
//  PlayerView.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 07/05/2024.
//

import SwiftUI
import YouTubeiOSPlayerHelper

/* The PlayerView struct conforms to the UIViewRepresentable protocol and acts as a bridge between SwiftUI and the YTPlayerView class */
struct PlayerView: UIViewRepresentable {
    let videoID: String
//    private var playerView: YTPlayerView?

    func makeUIView(context: Context) -> YTPlayerView {
        let playerView = YTPlayerView()
        playerView.load(withVideoId: videoID)
        return playerView
    }

    func updateUIView(_ uiView: YTPlayerView, context: Context) {
        // Update the view if needed
    }
    /*
    func play() {
        playerView?.playVideo()
    }
    
    func stop() {
        playerView?.stopVideo()
    }
     */
}



#Preview {
//    @State var playerView: YTPlayerView?
    PlayerView(videoID: "")
}
