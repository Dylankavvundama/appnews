import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Buttonprofil extends StatelessWidget {
  const Buttonprofil(
      {Key? key,
      required this.screenH,
      required this.screenW,
      required this.IconData,
      required this.text,
      required this.route})
      : super(key: key);

  final double screenH;
  final double screenW;
  final IconData;
  final String text;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            (MaterialPageRoute(
              builder: (context) {
                return route;
              },
            )));
      },
      child: Container(
        height: screenH * 0.1,
        width: screenW / 2,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: Border.all(color: Colors.white, style: BorderStyle.solid)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconData,
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                  color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
