import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Screen/Welcome.dart';
import 'package:newsapp/Screen/login.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), NextPage);
  }

  void NextPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MyLogin();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const Icon(
            //   Icons.museum_outlined,
            //   size: 100,
            //   color: Color.fromARGB(255, 7, 33, 199),
            // ),
            const SizedBox(height: 100),
            const CircleAvatar(
              backgroundImage: AssetImage("assets/asset/munyomo.jpg"),
              radius: 100,
            ),
            const SizedBox(height: 20),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'MUNYOMO',
                  textStyle: const TextStyle(
                      fontSize: 32.0, fontWeight: FontWeight.bold),
                  speed: const Duration(milliseconds: 80),
                ),
                FadeAnimatedText(
                  'L homme du peuple',
                  textStyle: const TextStyle(
                      fontSize: 32.0, fontWeight: FontWeight.bold),
                  duration: const Duration(milliseconds: 800),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 80),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            const SizedBox(height: 300),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.info_outline),
                SizedBox(width: 10),
                Text(
                  'from CFPI',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
