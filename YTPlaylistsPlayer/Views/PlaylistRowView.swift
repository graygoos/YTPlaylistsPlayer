//
//  PlaylistRowView.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 29/05/2024.
//

import SwiftUI

struct PlaylistRowView: View {
    var playlist: PlaylistsItems

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: playlist.snippet.thumbnails.medium.url )) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 100, height: 80)
            .cornerRadius(8)

            VStack(alignment: .leading, spacing: 5) {
                Text(playlist.snippet.title)
                    .font(.headline)
                Text(playlist.snippet.channelTitle)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(.leading, 10)
        }
    }
}


//#Preview {
//    PlaylistRowView()
//}
