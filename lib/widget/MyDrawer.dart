// ignore_for_file: prefer_const_constructors

import 'package:audio_background_demo/routes/my_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  currentAccountPicture: Image.network(
                      "https://api.happythoughts.in/assets/61cc6c94-192f-4044-ac4e-a0bb8a55e831"),
                  margin: EdgeInsets.zero,
                  accountName: Text("TGF"),
                  accountEmail: Text("tgf@gmail.com"),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
              onTap: () => Navigator.pushNamed(context, MyRoutes.MainPage),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Audio Player",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
              onTap: () => Navigator.pushNamed(context, MyRoutes.AUDIO_PLAYER),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
              //onTap: () => Navigator.pushNamed(context, MyRoutes.profileRoute),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
