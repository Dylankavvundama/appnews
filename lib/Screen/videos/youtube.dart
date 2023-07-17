import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:newsapp/Screen/videos/listVideo.dart';
import 'package:newsapp/Screen/videos/video.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Youtube extends StatefulWidget {
  const Youtube({
    
    
    required this.videos,
    Key? key}) : super(key: key);

  final String videos;

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  late YoutubePlayerController controller;

  List<dynamic> video = [];
  bool _isLoading = false;

  fetchvideos() async {
    setState(() {
      _isLoading = true;
    });
    const url = 'http://10.0.2.2:8000/allVideo';
    // const url = 'http:// 192.168.88.13:8000/allFondateur';
    final uri = Uri.parse(url);
    final reponse = await http.get(uri);
    final resultat = jsonDecode(reponse.body);
    video = resultat;
    debugPrint(reponse.body);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchvideos();
    String url = widget.videos;
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
        flags:
            const YoutubePlayerFlags(mute: false, loop: false, autoPlay: true));
  }

  @override
  void deactivate() {
    controller.pause();
  }

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: screenH * 0.4,
            child: YoutubePlayer(
              controller: controller,
              showVideoProgressIndicator: true,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                video.length,
                (index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Youtube(videos: video[index]['video']),
                    ));
              },
              child: PostVideoWidget(
                screenHeight: screenH,
                screenWidth: screenW,
                image: "http://10.0.2.2:8000" + video[index]['image'],
                description: video[index]['description'],
                text: "",
                date: "25/1/2022",
              ),
            ),),
          )
        ]),
      ),
    );
  }
}
