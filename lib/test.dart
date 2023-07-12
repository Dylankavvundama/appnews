import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:stg/politico/model/user.dart';

class Apidjango extends StatefulWidget {
  const Apidjango({Key? key}) : super(key: key);

  @override
  State<Apidjango> createState() => _ApidjangoState();
}

class _ApidjangoState extends State<Apidjango> {
  List<dynamic> users = [];
  bool _isLoading = false;
  fetchLocal() async {
    setState(() {
      _isLoading = true;
    });
    const url = 'http://10.0.2.2:8000/allFondateur';
    // const url = 'http:// 192.168.88.13:8000/allFondateur';
    final uri = Uri.parse(url);
    final reponse = await http.get(uri);
    final resultat = jsonDecode(reponse.body);
    users = resultat;
    debugPrint(reponse.body);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchLocal();
    //fetchLocalPHP();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'API REST',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(color: Colors.blue),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                final name = user['nom'];
                final gender = user['postnom'];
                final picture = "http://10.0.2.2:8000" + user['photo'];
                // final picture = "http://10.0.2.2:8000/fjdjgfkfgR";
                //   debugPrint(picture);
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(picture),
                    radius: 19,
                  ),
                  title: Text(gender),
                  subtitle: Text(name),
                );
              },
            ),
    );
  }
}
