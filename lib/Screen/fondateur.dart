import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:newsapp/Screen/Colors/Colors.dart';
import 'package:newsapp/Screen/Welcome.dart';
import 'package:http/http.dart' as http;

class Fondateur extends StatefulWidget {
  Fondateur({Key? key}) : super(key: key);

  @override
  State<Fondateur> createState() => _FondateurState();
}

class _FondateurState extends State<Fondateur> {
  List<dynamic> fondateur = [];
  bool _isLoading = false;

  fetchfondateurs() async {
    setState(() {
      _isLoading = true;
    });
    const url = 'http://10.0.2.2:8000/allFondateur';
    // const url = 'http:// 192.168.88.13:8000/allFondateur';
    final uri = Uri.parse(url);
    final reponse = await http.get(uri);
    final resultat = jsonDecode(reponse.body);
    fondateur = resultat;
    debugPrint(reponse.body);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchfondateurs();
    //fetchLocalPHP();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'FONDATEUR',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
        ),
        leading: BackButton(
          color: Colors.black,
          onPressed: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ScreenWelcome()));
          }),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: List.generate(
                fondateur.length,
                (index) => fondateurwidegt(
                    image: fondateur[index]['photo'],
                    nom: fondateur[index]['nom'],
                    postnom: fondateur[index]['postnom'],
                    description: fondateur[index]['description']))),
      ),
    );
  }
}

class fondateurwidegt extends StatelessWidget {
  const fondateurwidegt({
    required this.image,
    required this.nom,
    required this.postnom,
    required this.description,
    Key? key,
  }) : super(key: key);

  final String image;
  final String nom;
  final String postnom;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.network(
            'http://10.0.2.2:8000${image}',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(3.0),
            child: Text(
              '${nom} ${postnom}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        SizedBox(
          height: 0.2,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(3.0),
            child: Text(
              '',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '${description}',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        )
      ],
    );
  }
}
