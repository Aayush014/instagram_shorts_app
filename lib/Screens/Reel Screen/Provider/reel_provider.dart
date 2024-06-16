import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelProvider with ChangeNotifier {
  late VideoPlayerController _videoPlayerController;
  bool _isPlaying = false;
  bool _isLiked = false;
  Duration _videoDuration = Duration.zero;
  Duration _currentPosition = Duration.zero;

  ReelProvider(String videoAssetPath) {
    _videoPlayerController = VideoPlayerController.asset(videoAssetPath)
      ..initialize().then((_) {
        _videoDuration = _videoPlayerController.value.duration;
        _videoPlayerController.addListener(_updatePosition);
        _videoPlayerController.addListener(_checkVideoEnd);
        _videoPlayerController.play();
        _isPlaying = true;
        notifyListeners();
      }).catchError((error) {
        // Handle video initialization error
        print('Error initializing video: $error');
      });
  }

  VideoPlayerController get videoPlayerController => _videoPlayerController;
  bool get isPlaying => _isPlaying;
  bool get isLiked => _isLiked;
  Duration get videoDuration => _videoDuration;
  Duration get currentPosition => _currentPosition;

  void _updatePosition() {
    if (_videoPlayerController.value.isPlaying) {
      _currentPosition = _videoPlayerController.value.position;
      notifyListeners();
    }
  }

  void _checkVideoEnd() {
    if (_videoPlayerController.value.position == _videoPlayerController.value.duration) {
      _videoPlayerController.seekTo(Duration.zero);
      _videoPlayerController.play();
    }
  }

  void togglePlayPause() {
    if (_videoPlayerController.value.isPlaying) {
      _videoPlayerController.pause();
      _isPlaying = false;
    } else {
      _videoPlayerController.play();
      _isPlaying = true;
    }
    notifyListeners();
  }

  void toggleLike() {
    _isLiked = !_isLiked;
    notifyListeners();
  }

  @override
  void dispose() {
    _videoPlayerController.removeListener(_updatePosition);
    _videoPlayerController.removeListener(_checkVideoEnd);
    _videoPlayerController.dispose();
    super.dispose();
  }
}
