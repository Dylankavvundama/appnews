import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StoryWidget extends StatefulWidget {
  const StoryWidget(
      {Key? key,
      required this.screenH,
      required this.screenW,
      required this.image})
      : super(key: key);

  final double screenH;
  final double screenW;
  final String image;

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: widget.screenH * 0.2,
        width: widget.screenW * 0.3,
        margin: const EdgeInsets.only(right: 6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: Colors.red.shade200, style: BorderStyle.solid, width: 3),
        ),
        child: Image.network(
          widget.image,
          // "assets/asset/tshi1.jpg",
          fit: BoxFit.cover,
          height: widget.screenH * 0.2,
          width: widget.screenW * 0.3,
        ),
      ),
    );
  }
}
