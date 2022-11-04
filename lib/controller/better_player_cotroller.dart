import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';

class MyVideoController extends StatefulWidget {
  const MyVideoController({super.key});

  @override
  State<MyVideoController> createState() => _MyVideoControllerState();
}

class _MyVideoControllerState extends State<MyVideoController> {
  BetterPlayerController? _betterPlayerController;
  @override
  void initState() {
    super.initState();
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4");
    _betterPlayerController = BetterPlayerController(
        BetterPlayerConfiguration(),
        betterPlayerDataSource: betterPlayerDataSource);

    _betterPlayerController!.play();
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _betterPlayerController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: BetterPlayer(
        controller: _betterPlayerController!,
      ),
    );
  }
}
