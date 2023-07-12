import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newsapp/Screen/profil/button.dart';
import 'package:newsapp/Screen/profil/editProfil.dart';
import 'package:newsapp/Screen/profil/row.dart';



class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: screenH * 0.06,
                    ),
                    GestureDetector(
                      child: const Text(
                        '...',
                        style: TextStyle(color: Colors.black54, fontSize: 19),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/asset/a.jpg",
                  ),
                  radius: 80,
                ),
                SizedBox(
                  height: screenH * 0.05,
                ),
                const Text(
                  'Kaniel utis',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Membre premier degrer',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'Republic democratic of congo',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: screenH * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RowContenu(
                  screenH: screenH,
                  screenW: screenW,
                  icon: Icons.comment,
                  text: '455u7',
                ),
                RowContenu(
                  screenH: screenH,
                  screenW: screenW,
                  icon: Icons.library_add_check,
                  text: '45897',
                ),
                RowContenu(
                  screenH: screenH,
                  screenW: screenW,
                  icon: Icons.book,
                  text: '45560',
                ),
              ],
            ),
            SizedBox(height: screenH * 0.03),
            const Padding(
              padding: EdgeInsets.only(right: 15, left: 15),
              child: Text(
                'Mobile App User Profile Page | r Profile Page | AMobile App User Profile Page Mobile App User Profile PMobile App User Profile Page | AMobile App User Profile Page Mobile App User Profile PMobile App User Profile Page | AMobile App User Profile Page Mobile App User Profile P Page | A | A',
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            SizedBox(height: screenH * 0.03),
            Row(
              children: [
                Buttonprofil(
                  screenH: screenH,
                  screenW: screenW,
                  IconData: Icon(Icons.edit),
                  text: 'Edit profil',
                  route: EditW(),
                ),
                Buttonprofil(
                  screenH: screenH,
                  screenW: screenW,
                  IconData: Icon(Icons.follow_the_signs),
                  text: 'Publiez',
                  route: EditW(),
                ),
              ],
            ),
            SizedBox(height: screenH * 0.03),
            Container(
              width:  screenW,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Province',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black, fontSize: 19),
                  ),
                  SizedBox(
                    height: screenH * 0.01,
                  ),
                  Text(
                    'Nord kivu || Goma',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

