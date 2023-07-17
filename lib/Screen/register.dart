import 'package:flutter/material.dart';
import 'package:newsapp/Screen/Welcome.dart';
import 'package:newsapp/Screen/login.dart';
import 'package:http/http.dart' as http;

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  TextEditingController username = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void register() async {
    if (username.text.isNotEmpty && password.text.isNotEmpty) {
      const url = 'http://10.0.2.2:8000/create_user';
      var reponse = await http.post(Uri.parse(url),
          body: ({
            "username": username.text,
            "first_name": firstname.text,
            "last_name": lastname.text,
            "email": email.text,
            "password": password.text
          }));
      if (reponse.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          'Compte creer',
          style: TextStyle(color: Colors.black),
        )));
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const MyLogin();
        }));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
        'Veuillez entrer les informations importantes',
        style: TextStyle(color: Colors.red),
      )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 23),
                child: const Text(
                  'Créer Un \n Compte',
                  style: TextStyle(color: Colors.black, fontSize: 33),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextfieldWidget(
                            username: username,
                            label: 'Nom utilisateur',
                            obscurite: false,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextfieldWidget(
                            username: firstname,
                            label: 'Nom',
                            obscurite: false,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextfieldWidget(
                            username: lastname,
                            label: 'Prenom',
                            obscurite: false,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          TextfieldWidget(
                            username: email,
                            label: 'Email',
                            obscurite: false,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          TextfieldWidget(
                            username: password,
                            label: 'Mot de passe',
                            obscurite: true,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              register();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Enregistrer',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 27,
                                      fontWeight: FontWeight.w700),
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xff4c505b),
                                  child: IconButton(
                                      color: Colors.black,
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.arrow_forward,
                                      )),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      (MaterialPageRoute(builder: (context) {
                                        return const MyLogin();
                                      })));
                                },
                                child: const Text(
                                  'Connectez-vous',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                                style: ButtonStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget(
      {Key? key,
      required this.username,
      required this.label,
      required this.obscurite})
      : super(key: key);

  final TextEditingController username;
  final String label;
  final bool obscurite;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: username,
      obscureText: obscurite,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
          hintText: label,
          hintStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
