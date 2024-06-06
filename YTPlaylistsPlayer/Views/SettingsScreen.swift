//
//  SettingsScreen.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 29/05/2024.
//

import SwiftUI

struct SettingsScreen: View {
    @Environment(\.dismiss) var dismiss
    
    let aboutText = """
YouTube Playlist Player is an iOS application that allows users to retrieve and play their YouTube playlists.

Copyright ©2024 Femi Aliu. All rights reserved.
"""
    
    var body: some View {
        NavigationStack {
            Form {
                Text(aboutText)
                
                Button(action: {}) {
                    Text("Sign out")
                }
            }
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        dismiss()
                    }) {
                        Text("Close")
                    }
                }
            }
        }
    }
}

#Preview {
    SettingsScreen()
}
