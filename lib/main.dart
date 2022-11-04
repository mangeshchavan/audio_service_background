// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'package:audio_background_demo/modules/audio_player_service.dart';
import 'package:audio_background_demo/modules/homepage.dart';
import 'package:audio_background_demo/modules/video_player_demo.dart';
import 'package:audio_background_demo/routes/my_routes.dart';
import 'package:audio_background_demo/services/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      // theme: MyTheme.lightTheme(context),
      initialRoute: MyRoutes.MainPage,
      routes: {
        MyRoutes.MainPage: (context) => HomePage(),
        MyRoutes.AUDIO_PLAYER: (context) => MyAudioPlayer(),
        MyRoutes.VIDEO_PLAYER: (context) => MyVideoPlayer(),
        //MyRoutes.cartRoute: (context) => CartPage(),
        //MyRoutes.profileRoute: (context) => ProfilePage(),
      },
    );
  }
}
