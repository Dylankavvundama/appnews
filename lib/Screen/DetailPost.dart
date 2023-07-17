import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:newsapp/Screen/Welcome.dart';
import 'package:newsapp/Screen/Widget/Post/Post.dart';
import 'package:http/http.dart' as http;

class DetailPost extends StatefulWidget {
  DetailPost({required this.img, Key? key}) : super(key: key);
  
  final String img;

  @override
  State<DetailPost> createState() => _DetailPostState();
}

class _DetailPostState extends State<DetailPost> {
  List<dynamic> post = [];
  bool _isLoading = false;

  fetchPosts() async {
    setState(() {
      _isLoading = true;
    });
    const url = 'http://10.0.2.2:8000/allpost';
    // const url = 'http:// 192.168.88.13:8000/allFondateur';
    final uri = Uri.parse(url);
    final reponse = await http.get(uri);
    final resultat = jsonDecode(reponse.body);
    post = resultat;
    debugPrint(reponse.body);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchPosts();
    //fetchLocalPHP();
  }
  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: ScreenHeight * 0.5,
                  width: ScreenWidth,
                  child: Image.network(
                    'http://10.0.2.2:8000${widget.img}',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 8,
                  right: 8,
                  top: 18,
                  bottom: 16,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                           Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ScreenWelcome();
                        }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.arrow_left_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.share,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ScreenHeight * 0.2,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  // bottom: 10,
                  left: 8,
                  right: ScreenWidth * 0.7,
                  top: ScreenHeight * 0.35,
                  child: Container(
                    height: ScreenHeight * 0.04,
                    width: ScreenWidth * 0.05,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'POLITIQUE',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: ScreenHeight * 0.4,
                  left: 8,
                  right: 10,
                  child: Container(
                    color: Colors.white,
                    child: const Text(
                      'Se basant sur les arrêts l’ex-patron du service Se basant sur les arrêts l’ex-patron du service de de Se basant sur les arrêts l’ex-patron du service de',
                      maxLines: 3,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenHeight * 0.03,
            ),
            Container(
              height: ScreenHeight * 0.06,
              width: ScreenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 8),
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Kaniel utis',
                            style: TextStyle(color: Colors.black, fontSize: 11),
                          ),
                          // SizedBox(height: 2),
                          Text(
                            '19/01/1990',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.hotel_class),
                      ),
                      Text('34K'),
                      SizedBox(width: 5),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.comment),
                      ),
                      Text('51k'),
                      SizedBox(width: 13),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Divider(
              color: Colors.black45,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'For help getting startedFor help getting started with Flutter, view ou For help getting startedFor help getting started with Flutter, view ou For help getting startedFor help getting started with Flutter, view ou For help getting startedFor help getting started with Flutter, view ou For help getting startedFor help getting started with Flutter, view ou For help getting startedFor help getting started with Flutter, view ou For help getting startedFor help getting started with Flutter, view ou For help getting startedFor help getting started with Flutter, view ou v For help getting started with Flutter, view ou For help getting started with Flutter, view ou with Flutter, view ou For help getting started with Flutter, view ou For help getting started For help getting started with Flutter, view ou with Flutter, view ou For help getting started with Flutter, view ou',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Container(
                    height: ScreenHeight * 0.04,
                    width: ScreenWidth * 0.4,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'AUTRE POST',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    post.length,
                    (index) => GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailPost(img: post[index]['image_post'],);
                        }));
                      },
                      child: PostWidget(
                        screenW: ScreenWidth,
                        screenH: ScreenHeight,
                        categories: "PLAIDOIRIE",
                        commentaires: post[index]['commentaire'],
                        date: post[index]['date_pub'],
                        description: post[index]['description'],
                        index: index + 1,
                        text: "",
                        vues: "34k",
                        image: post[index]['image_post'],
                      ),
                    ),
                  ),
                ),
              )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
