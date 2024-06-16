import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../Provider/reel_provider.dart';

class ContentScreen extends StatelessWidget {
  final String videoAssetPath;

  const ContentScreen({Key? key, required this.videoAssetPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ReelProvider(videoAssetPath),
      child: Consumer<ReelProvider>(
        builder: (context, reelProvider, child) {
          return Stack(
            fit: StackFit.expand,
            children: [
              reelProvider.videoPlayerController.value.isInitialized
                  ? VideoPlayer(reelProvider.videoPlayerController)
                  : const Center(child: CircularProgressIndicator()),
              Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: LinearProgressIndicator(
                  value: reelProvider.currentPosition.inSeconds /
                      (reelProvider.videoDuration.inSeconds > 0
                          ? reelProvider.videoDuration.inSeconds
                          : 1),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
