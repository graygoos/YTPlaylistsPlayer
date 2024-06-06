//
//  RemoteImage.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 29/05/2024.
//

import SwiftUI

struct RemoteImage: View {
    let url: String

    @State private var image: Image? = nil

    var body: some View {
        Group {
            if let image = image {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } else {
                Image(systemName: "photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .onAppear {
                        loadImage(from: url)
                    }
            }
        }
    }

    private func loadImage(from url: String) {
        guard let imageURL = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: imageURL) { data, response, error in
            if let data = data, let uiImage = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.image = Image(uiImage: uiImage)
                }
            }
        }.resume()
    }
}

#Preview {
    RemoteImage(url: "")
}
