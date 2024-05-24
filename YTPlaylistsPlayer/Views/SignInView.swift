//
//  SignInView.swift
//  YTPlaylistsPlayer
//
//  Created by Femi Aliu on 21/05/2024.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift

class SignInViewModel: ObservableObject {
    @Published var isSignedIn = false
}

struct SignInView: View {
    @State private var isSignedIn = false

    var body: some View {
        VStack {
            if isSignedIn {
                Text("Signed In")
                // Navigate to PlaylistsView or other content
            } else {
                GoogleSignInButton {
                    GIDSignIn.sharedInstance.signIn(withPresenting: getRootViewController()) { user, error in
                        if let user = user {
                            // Handle successful sign-in
                            isSignedIn = true
                        } else if let error = error {
                            print("Sign-in error: \(error.localizedDescription)")
                        }
                    }
                }
                .frame(width: 200, height: 50)
            }
        }
    }

    func getRootViewController() -> UIViewController {
        guard let windowScene = UIApplication.shared
                .connectedScenes
                .first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene else {
            return UIViewController()
        }
        return windowScene.windows.first?.rootViewController ?? UIViewController()
    }
}


#Preview {
    SignInView()
}
