# Instagram Shorts App

Welcome to the Shorts Scrolling App! This Flutter application allows users to scroll through short video reels, similar to Instagram Reels. The app features a play/pause button in the bottom navigation bar, as well as on-screen mute/unmute options for each reel.

## Features

- **Scrollable Reels**: Users can scroll through an endless feed of short video reels.
- **Play/Pause Functionality**: Easily control video playback using the play/pause button in the bottom navigation bar.
- **Mute/Unmute Option**: Quickly mute or unmute the audio for individual reels directly on the screen.

## Screenshots

<details> 
  <summary><h2>📸Photos</h2></summary>
  <p>
    <table align="center">
  <tr>
    <td><img src="https://github.com/Aayush014/instagram_shorts_app/assets/133498952/6f64d371-9fdf-42c8-a5db-5c4b4e5aa7c4" alt="Image 2" width="180" height="auto"></td>
    <td><img src="https://github.com/Aayush014/instagram_shorts_app/assets/133498952/20826f3f-33c1-4860-ad8a-d16d9c06b397" alt="Image 2" width="180" height="auto"></td>
    <td><img src="https://github.com/Aayush014/instagram_shorts_app/assets/133498952/959641a7-e4dd-4c7d-bda5-6c322d355ddd" alt="Image 2" width="180" height="auto"></td>
  </tr>
  <tr>
    <td><img src="https://github.com/Aayush014/instagram_shorts_app/assets/133498952/5f375270-121f-49e1-9022-bdbe18b636d1" alt="Image 2" width="180" height="auto"></td>
    <td><img src="https://github.com/Aayush014/instagram_shorts_app/assets/133498952/f1da5151-2c2a-4856-aab1-7f8738b5aa74" alt="Image 2" width="180" height="auto"></td>
    <td><img src="https://github.com/Aayush014/instagram_shorts_app/assets/133498952/c5647bf7-4dec-4cf5-95ae-f181c500a27c" alt="Image 2" width="180" height="auto"></td>
  </tr>
    </table>    
  </p>
  </details>
  <details> 
  <summary><h2>📽️Video</h2></summary>
  <p>
    <table align="center">
  <tr>
    <video src ="https://github.com/Aayush014/instagram_shorts_app/assets/133498952/d6be6049-6447-4637-b9dd-64237fa51645"></video> </h1>
  </tr>
    </table>   
  </p>
  </details>

## Built With

This app is built using the following Flutter packages:

- **provider**: A wrapper around InheritedWidget to make state management easy.
- **video_player**: A Flutter plugin for displaying inline video with other Flutter widgets.
- **chewie**: A video player for Flutter that provides a uniform interface for video playback, making it easy to customize the player controls.
- **card_swiper**: A card swiper widget for Flutter that makes it easy to create swipeable cards, used here to navigate between reels.

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/Aayush014/instagram_shorts_app.git
    ```

2. Install the dependencies:
    ```bash
    flutter pub get
    ```

## Usage

1. Ensure you have a device or emulator running.
2. Start the application:
    ```bash
    flutter run
    ```
3. The app will launch, and you can begin scrolling through video reels.

## Packages in Detail

### provider

`provider` is used for state management in the app. It helps manage the state of the video reels and user interactions in a clean and efficient manner.

### video_player

`video_player` is a powerful Flutter plugin that provides functionality to play videos. It supports various video formats and integrates seamlessly with Flutter's widget system.

### chewie

`chewie` wraps around `video_player` to provide a customizable video player interface. It offers easy-to-use controls and a consistent look and feel across different platforms.

### card_swiper

`card_swiper` is used to create a swipeable card interface, allowing users to easily scroll through the video reels. This package offers smooth animations and customizable card styles.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch:
    ```bash
    git checkout -b feature-name
    ```
3. Make your changes and commit them:
    ```bash
    git commit -m "Add some feature"
    ```
4. Push to the branch:
    ```bash
    git push origin feature-name
    ```
5. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or feedback, please feel free to contact us at aayushpatel01411@gmail.com.
