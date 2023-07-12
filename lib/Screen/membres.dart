import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Membres extends StatefulWidget {
  const Membres({Key? key}) : super(key: key);

  @override
  State<Membres> createState() => _MembresState();
}

class _MembresState extends State<Membres> {
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
