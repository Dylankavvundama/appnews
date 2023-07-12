import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newsapp/Screen/Profil.dart';

class EditW extends StatefulWidget {
  const EditW({Key? key}) : super(key: key);

  @override
  State<EditW> createState() => _EditWState();
}

class _EditWState extends State<EditW> {
  TextEditingController name = TextEditingController(text: 'ABIO');

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenH * 0.1,
              ),
              GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/asset/a.jpg'),
                  radius: 60,
                ),
              ),
              SizedBox(height: screenH * 0.05),
              Textform(maxline: 1, name: name, label: 'nom du membre'),
              Textform(maxline: 4, name: name, label: 'Post nom du membre'),
              Textform(maxline: 4, name: name, label: 'Post nom du membre'),
              Textform(maxline: 4, name: name, label: 'Post nom du membre'),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            (MaterialPageRoute(builder: (context) {
                              return const Profil();
                            })));
                      },
                      child: ButtonFWidget(
                          screenH: screenH,
                          screenW: screenW,
                          text: 'Quitter',
                          icon: Icons.save),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: ButtonFWidget(
                          screenH: screenH,
                          screenW: screenW,
                          text: 'Enregistrer',
                          icon: Icons.arrow_back_rounded),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonFWidget extends StatelessWidget {
  const ButtonFWidget(
      {Key? key,
      required this.screenH,
      required this.screenW,
      required this.icon,
      required this.text})
      : super(key: key);

  final double screenH;
  final double screenW;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenH * 0.06,
      width: screenW / 2.5,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 13,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class Textform extends StatelessWidget {
  const Textform({
    Key? key,
    required this.maxline,
    required this.name,
    required this.label,
  }) : super(key: key);

  final int maxline;
  final TextEditingController name;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        maxLines: maxline,
        controller: name,
        decoration: InputDecoration(
          labelText: label,
          icon: Icon(Icons.perm_identity),
          // prefixIcon: Icon(Icons.note),
          hoverColor: Colors.red,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(10), right: Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
