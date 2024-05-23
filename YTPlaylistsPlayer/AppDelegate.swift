//
//  AppDelegate.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 21/05/2024.
//

import UIKit
import GoogleSignIn

class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        print(ProcessInfo.processInfo.environment)
        // Initialize sign-in
        GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
            if let error = error as? GIDSignInError, error.code != .hasNoAuthInKeychain {
                print("There was an error signing in: \(error.localizedDescription)")
            }
        }
        return true
    }

    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey: Any] = [:]
    ) -> Bool {
        return GIDSignIn.sharedInstance.handle(url)
    }
}


