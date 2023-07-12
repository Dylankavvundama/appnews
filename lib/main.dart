import 'package:flutter/material.dart';
import 'package:newsapp/Screen/Profil.dart';

import 'package:newsapp/Screen/profil/editProfil.dart';

import 'Screen/DetailPost.dart';
import 'Screen/Welcome.dart';
import 'Screen/loadingPage.dart';
import 'Screen/login.dart';
import 'Screen/membres.dart';
import 'Screen/register.dart';
import 'Screen/videos/listVideo.dart';
import 'Screen/videos/video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
 
home: ScreenWelcome (),

    );
  }
}
