import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key});

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: BetterPlayer.network(
        "https://player.vimeo.com/external/766835272.m3u8?s=907ac81d86c20074fc157d40d67562f0de2d5cb4",
        betterPlayerConfiguration: BetterPlayerConfiguration(
          aspectRatio: 16 / 9,
        ),
      ),
    );
  }
}
