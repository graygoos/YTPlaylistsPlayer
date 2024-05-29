//
//  YTPlaylistsPlayerApp.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 07/05/2024.
//

import SwiftUI

@main
struct YTPlaylistsPlayerApp: App {
    @StateObject private var signInViewModel = SignInViewModel()
    
    var body: some Scene {
        WindowGroup {
//            if signInViewModel.isSignedIn {
                PlaylistsView()
//            } else {
//                SignInView()
//                    .environmentObject(signInViewModel)
//            }
            
        }
    }
}
