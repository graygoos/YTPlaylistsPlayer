
# YouTube Playlist Player

YouTube Playlist Player is an iOS application that allows users to retrieve and play their YouTube playlists. The app utilizes GoogleSignIn for authentication and YouTubeiOSPlayerHelper for playing YouTube videos.

<p align="center">
    <img src="https://github.com/graygoos/YTPlaylistsPlayer/assets/52054174/efa7cde5-698f-4ee3-89dd-f439607d6890" width="250" height="250">
</p>

## Features

- Sign in with Google
- Retrieve YouTube playlists
- Play YouTube videos from playlists

## Screenshots

![App Screenshot](https://via.placeholder.com/468x300?text=App+Screenshot+Here)


## Requirements

- iOS 17+
- Xcode 15+
- Swift 5.0+
## Dependencies

- GoogleSignIn
- YouTubeiOSPlayerHelper
## Getting Started

### Prerequisites

Before you begin, ensure you have met the following requirements:

- You have installed the latest version of Xcode.
- You have a Google account with access to the Google Cloud Console.
- You have access to the YouTube Data API v3.

### Installation
1. Clone the repository:
git clone https://github.com/graygoos/YTPlaylistsPlayer
cd YouTubePlaylistPlayer

2. Open the project in Xcode:
open YouTubePlaylistPlayer.xcodeproj

3. Add the required frameworks via Swift Package Manager:

GoogleSignIn:

In Xcode, go to File > Swift Packages > Add Package Dependency.
Enter the following URL: https://github.com/google/GoogleSignIn-iOS.
Choose the latest version and add the package to your project.

YouTubeiOSPlayerHelper:

In Xcode, go to File > Swift Packages > Add Package Dependency.
Enter the following URL: https://github.com/youtube/youtube-ios-player-helper.
Choose the latest version and add the package to your project.

### Setup

To run the app, you need to set up your Google API credentials and YouTube API key. Follow these steps:

1. Get Your YouTube API Key

Go to the Google Cloud Console.
Create a new project or select an existing project.
Navigate to API & Services > Library.
Search for YouTube Data API v3 and enable it.
Go to API & Services > Credentials.
Click Create Credentials and choose API Key.
Copy the generated API key.

2. Get Your Google Client ID (OAuth 2.0)

Go to the Google Cloud Console.
Select your project.
Navigate to API & Services > Credentials.
Click Create Credentials and choose OAuth 2.0 Client IDs.
Select iOS as the application type.
Enter your app's bundle identifier.
Click Create and copy the generated Client ID.

3. Get Your YouTube Channel ID

Go to your YouTube channel.
Click on your profile picture in the top right and select Your Channel.
Copy the channel ID from the URL (the part after /channel/).

### Configure Environment Variables

### Build and Run the App

1. In Xcode, select your target device or simulator.
2. Build and run the app using the Cmd+R shortcut or by clicking the play button.

## Usage 
- Sign in with your Google account.
- Access your YouTube playlists.
- Play videos directly within the app.

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgements

- GoogleSignIn
- YouTubeiOSPlayerHelper
