import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:newsapp/Screen/Colors/Colors.dart';
import 'package:newsapp/Screen/DetailPost.dart';
import 'package:newsapp/Screen/Profil.dart';
import 'package:newsapp/Screen/fondateur.dart';
import 'package:newsapp/Screen/membres.dart';
import 'package:newsapp/Screen/videos/listVideo.dart';
import 'Colors/Colors.dart';
import 'Widget/Post/Post.dart';
import 'Widget/Story/Stories.dart';
import 'package:http/http.dart' as http;

class ScreenWelcome extends StatefulWidget {
  const ScreenWelcome({Key? key}) : super(key: key);

  @override
  State<ScreenWelcome> createState() => _ScreenWelcomeState();
}

class _ScreenWelcomeState extends State<ScreenWelcome> {
  List<dynamic> story = [];
  List<dynamic> post = [];
  bool _isLoading = false;
  fetchLocal() async {
    setState(() {
      _isLoading = true;
    });
    const url = 'http://10.0.2.2:8000/allStory';
    // const url = 'http:// 192.168.88.13:8000/allFondateur';
    final uri = Uri.parse(url);
    final reponse = await http.get(uri);
    final resultat = jsonDecode(reponse.body);
    story = resultat;
    debugPrint(reponse.body);
    setState(() {
      _isLoading = false;
    });
  }

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
    fetchLocal();
    fetchPosts();
    //fetchLocalPHP();
  }

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbar,
        title: const Text(
          'MUNYOMO FONDATION',
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Container(
              height: screenH * 0.2,
              width: screenW,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/asset/david.jpg"),
                    radius: 30,
                  ),
                  Text(
                    "David Mbuluku",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "Vous etes connecter",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                ],
              )),
            ),
            SizedBox(
              height: screenH * 0.03,
            ),
            ListTile(
              onTap: () => Navigator.of(context).pop(),
              leading: const Icon(
                Icons.menu,
              ),
              title: const Text('ACCEUIL'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Fondateur();
                }));
              },
              leading: const Icon(
                Icons.foundation,
              ),
              title: Text('FONDATEUR'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Membres();
                }));
              },
              leading: const Icon(
                Icons.wallet_membership,
              ),
              title: Text('MEMBRE'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListVideo();
                }));
              },
              leading: const Icon(
                Icons.video_call,
              ),
              title: const Text('VIDEO'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Profil();
                }));
              },
              leading: const Icon(
                Icons.person,
              ),
              title: const Text('PROFIL'),
            ),
            ListTile(
                onTap: () => Navigator.of(context).pop(),
                leading: const Icon(
                  Icons.logout,
                ),
                title: const Text('QUITTER')),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      story.length,
                      (index) => StoryWidget(
                          screenH: screenH,
                          screenW: screenW,
                          image:
                              "http://10.0.2.2:8000" + story[index]['image']),
                    ),
                    // [
                    //   StoryWidget(screenH: screenH, screenW: screenW),
                    //   //      StoryWidget(screenH: screenH, screenW: screenW),
                    //   StoryWidget(screenH: screenH, screenW: screenW),
                    // ],
                    ),
              ),
              SizedBox(height: screenH * 0.02),
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
                          return DetailPost(
                            img: post[index]['image_post'],
                          );
                        }));
                      },
                      child: PostWidget(
                        screenW: screenW,
                        screenH: screenH,
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
                  // [
                  //   PostWidget(
                  //     screenW: screenW,
                  //     screenH: screenH,
                  //     categories: "PLAIDOIRIE",
                  //     commentaires: "10",
                  //     date: "22/05/2023",
                  //     description:
                  //         "Le député national Patrick Munyomo a été reçu,  Jean-Michel Sama Lukonde, dans son cabinet de travail à Kinshasa, capitale de la République démocratique du Congo.",
                  //     image: "assets/asset/pat2.jpg",
                  //     index: 1,
                  //     text: "",
                  //     vues: "34k",
                  //   ),
                  //   PostWidget(
                  //     screenW: screenW,
                  //     screenH: screenH,
                  //     categories: "POLITIQUE",
                  //     commentaires: "10",
                  //     date: "22/05/2023",
                  //     description:
                  //         "Le député national Patrick Munyomo a été reçu, le jeudi 26 mai 2022, par le premier ministre, Jean-Michel Sama Lukonde, dans son cabinet de travail à Kinshasa, capitale de la République démocratique du Congo.",
                  //     image: "assets/asset/pat3.jpg",
                  //     index: 2,
                  //     text: "",
                  //     vues: "34k",
                  //   ),
                  // ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
