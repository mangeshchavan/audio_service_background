// ignore_for_file: prefer_const_constructors

import 'package:audio_background_demo/routes/my_routes.dart';
import 'package:audio_background_demo/widget/MyDrawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Player App"),
        centerTitle: true,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Icon(
            Icons.notifications_active,
            size: 35,
          ),
          SizedBox(
            width: 25,
          ),
          CircleAvatar(),
        ],
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        controller: ScrollController(initialScrollOffset: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            FloatingActionButton.extended(
              tooltip: "Audio Player",
              onPressed: () =>
                  {Navigator.pushNamed(context, MyRoutes.AUDIO_PLAYER)},
              label: Text("Audio Player"),
              icon: Icon(Icons.audio_file),
            ),
            SizedBox(
              height: 25,
            ),
            FloatingActionButton.extended(
              tooltip: "Video Player",
              onPressed: () =>
                  {Navigator.pushNamed(context, MyRoutes.VIDEO_PLAYER)},
              label: Text("Video Player"),
              icon: Icon(Icons.video_file_sharp),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
