//
//  SettingsScreen.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 29/05/2024.
//

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        NavigationStack {
            Form {
                Button(action: {}) {
                    Text("Sign out")
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsScreen()
}
