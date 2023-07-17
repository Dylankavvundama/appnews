import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class Membres extends StatefulWidget {
  const Membres({Key? key}) : super(key: key);

  @override
  State<Membres> createState() => _MembresState();
}

class _MembresState extends State<Membres> {
  List<dynamic> membre = [];
  fetchmembre() async {
    setState(() {});
    const url = 'http://10.0.2.2:8000/allStory';
    // const url = 'http:// 192.168.88.13:8000/allFondateur';
    final uri = Uri.parse(url);
    final reponse = await http.get(uri);
    final resultat = jsonDecode(reponse.body);
    membre = resultat;
    debugPrint(reponse.body);
    setState(() {
      ;
    });
  }
  @override
  void initState() {
    super.initState();
    fetchmembre();
  
    //fetchmembrePHP();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Liste membre',
              style: TextStyle(color: Colors.white, fontSize: 18.0)),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Rechercher',
                  suffixIcon: FaIcon(
                    FontAwesomeIcons.search,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Listmembres(
              nom: 'dylan',
              photo: 'assets/asset/a.jpg',
              statut: 'Non actif',
            ),
            Listmembres(
              nom: 'Utis',
              photo: 'assets/asset/a.jpg',
              statut: 'Membre actif',
            ),
            Listmembres(
              nom: 'dave',
              photo: 'assets/asset/david.jpg',
              statut: 'Membre actif',
            ),
            Listmembres(
              nom: 'solo',
              photo: 'assets/asset/pat3.jpg',
              statut: 'Non actif',
            ),
            Listmembres(
              nom: 'Utis',
              photo: 'assets/asset/a.jpg',
              statut: 'Non actif',
            ),
            Listmembres(
              nom: 'dave',
              photo: 'assets/asset/david.jpg',
              statut: 'Membre actif',
            ),
            Listmembres(
              nom: 'solo',
              photo: 'assets/asset/pat3.jpg',
              statut: 'Membre actif',
            ),
            Listmembres(
              nom: 'Utis',
              photo: 'assets/asset/a.jpg',
              statut: 'Membre actif',
            ),
            Listmembres(
              nom: 'dave',
              photo: 'assets/asset/david.jpg',
              statut: 'Membre actif',
            ),
            Listmembres(
              nom: 'solo',
              photo: 'assets/asset/pat3.jpg',
              statut: 'Membre actif',
            ),
            Listmembres(
              nom: 'Utis',
              photo: 'assets/asset/a.jpg',
              statut: 'Membre actif',
            ),
            Listmembres(
              nom: 'dave',
              photo: 'assets/asset/david.jpg',
              statut: 'Membre actif',
            ),
          ],
        ),
      ),
    );
  }
}

class Listmembres extends StatelessWidget {
  const Listmembres({
    required this.nom,
    required this.photo,
    required this.statut,
    Key? key,
  }) : super(key: key);
  final String photo;
  final String nom;
  final String statut;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () => print('Tapped ListTileObject TheMoon'),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(photo),
        ),
        title: Text(nom),
        subtitle: Text(statut),
        trailing: Icon(Icons.edit));
  }
}
