//
//  TrackRowView.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 29/05/2024.
//
import SwiftUI

struct TrackRowView: View {
    let track: TrackItem
    @State private var videoThumbnail: UIImage?
    @State private var isLoadingThumbnail = false
    
    var body: some View {
        HStack {
            // Display thumbnail if available
            if isLoadingThumbnail {
                ProgressView()
                    .frame(width: 60, height: 60)
            } else if let videoThumbnail {
                Image(uiImage: videoThumbnail)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .cornerRadius(8)
            } else {
                // Placeholder if thumbnail is not available
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.gray)
                    .frame(width: 60, height: 60)
            }

            VStack(alignment: .leading) {
                Text(track.snippet.title)
                    .font(.headline)
                if !track.snippet.description.isEmpty {
                    Text(track.snippet.description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                }
            }
        }
        .task {
            await self.loadImage()
        }
    }
    
    func loadImage() async {
        self.isLoadingThumbnail = true
        DispatchQueue.global().async {
            do {
                if let thumbnailURL = track.snippet.thumbnails?.default.url,
                   let url = URL(string: thumbnailURL) {
                    let imageData = try Data(contentsOf: url)
                    DispatchQueue.main.async {
                        self.videoThumbnail = UIImage(data: imageData)
                        self.isLoadingThumbnail = false
                    }
                }
            } catch {
                self.isLoadingThumbnail = false
            }
        }
    }
}


//#Preview {
//    TrackRowView()
//}
