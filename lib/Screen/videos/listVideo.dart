import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:newsapp/Screen/videos/youtube.dart';
import 'video.dart';
import 'package:http/http.dart' as http;

class ListVideo extends StatefulWidget {
  const ListVideo({Key? key}) : super(key: key);

  @override
  State<ListVideo> createState() => _ListVideoState();
}

class _ListVideoState extends State<ListVideo> {
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
    //fetchLocalPHP();
  }

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('List video'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            ),
          ),
        ),
      ),
    );
  }
}

class videoWidget extends StatelessWidget {
  const videoWidget({
    required this.image,
    required this.video,
    required this.description,
    Key? key,
  }) : super(key: key);

  final String image;
  final String video;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                (MaterialPageRoute(builder: (context) {
                  return Youtube(videos: video);
                })));
          },
          child: Container(
            padding: EdgeInsets.all(19),
            child: Row(
              children: [
                Container(
                  height: 55,
                  child: Image.network(
                    'http://10.0.2.2:8000${image}',
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                 //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text('${description}'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '',
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
