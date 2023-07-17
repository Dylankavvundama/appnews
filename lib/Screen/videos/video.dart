import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
class VideoApp extends StatefulWidget {
  VideoApp({
    
    required this.img,
    Key? key});

  final String img;

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.img)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenHeight * 0.5,
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : Container(),
                ),
                Positioned(
                  left: screenWidth * 0.85,
                  right: 0,
                  top: screenHeight * 0.4,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _controller.value.isPlaying
                            ? _controller.pause()
                            : _controller.play();
                      });
                    },
                    child: Container(
                      height: screenHeight * 0.08,
                      decoration: const BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      child: Center(
                        child: Icon(
                          _controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Column(
              children: [
                PostVideoWidget(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  image: 'assets/asset/a.jpg',
                  description:
                      "Bienvenu dans notre monde sombre Bienvenu dans notre monde sombre  Bienvenu dans notre monde sombre Bienvenu dans notre monde sombre  ",
                  text: "Bienvenu d rah",
                  date: "25/1/2022",
                ),
                PostVideoWidget(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  image: 'assets/asset/tshi1.jpg',
                  description:
                      "Bienvenu monde sombre d'esprimonde sombre d'espri dans notre monde sombre d'esprit mal ah ah ah ah ah ah ah ah ah ah ah",
                  text: "Bienvenu d ah",
                  date: "25/10/2023",
                ),
                PostVideoWidget(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  image: 'assets/asset/pat2.jpg',
                  description:
                      "Bienvenu dans notre monde sombre d'esprit mal ah ah ah ah ah ah ah ah ah ah ah",
                  text: "Bienvenu d ah",
                  date: "25/10/2023",
                ),
                PostVideoWidget(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  image: 'assets/asset/pat5.jpg',
                  description:
                      "Bienvenu dans notre monde sombre d'esprit mal ah ah ah ah ah ah ah ah ah ah ah",
                  text: "Bienvenu d ah",
                  date: "2/10/2023",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class PostVideoWidget extends StatelessWidget {
  const PostVideoWidget({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.image,
    required this.description,
    required this.text,
    required this.date,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final String image;
  final String description;
  final String text;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        height: screenHeight * 0.25,
        width: screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              '${image}',
              fit: BoxFit.cover,
              height: screenHeight * 0.2,
              width: screenWidth / 2.5,
            ),
            Container(
              height: screenHeight * 0.22,
              width: screenWidth / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${description}',
                    maxLines: 3,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${text}',
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${date}',
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
