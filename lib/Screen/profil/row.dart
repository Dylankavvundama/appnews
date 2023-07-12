import 'package:flutter/material.dart';

class RowContenu extends StatelessWidget {
  const RowContenu(
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
      height: screenH * 0.1,
      width: screenW / 4,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border: Border.all(color: Colors.white, style: BorderStyle.solid),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.red,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
