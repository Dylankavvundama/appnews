import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
    required this.screenH,
    required this.screenW,
    required this.text,
    required this.icon,

  }) : super(key: key);

  final double screenH;
  final double screenW;
  final String text;
  final IconData icon;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 8, bottom: 8),
      child: Container(
        height: screenH * 0.05,
        width: screenW,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 20,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "${text}",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
