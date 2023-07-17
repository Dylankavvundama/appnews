import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostWidget extends StatefulWidget {
  const PostWidget({
    Key? key,
    required this.screenW,
    required this.screenH,
    required this.commentaires,
    required this.date,
    required this.description,
    required this.image,
    required this.text,
    required this.vues,
    required this.categories,
    required this.index,
  }) : super(key: key);

  final double screenW;
  final double screenH;
  final String image;
  final String text;
  final String description;
  final String vues;
  final String commentaires;
  final String date;
  final String categories;
  final int index;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool _isLoading = false;

  // @override
  // void initState() {
  //   super.initState();
  //   fetchLocal();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        color: Colors.white,
        width: widget.screenW,
        height: widget.screenH * 0.2,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: widget.screenW * 0.6,
                height: widget.screenH * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: widget.screenH * 0.07,
                          width: widget.screenW * 0.07,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                          child: Center(
                            child: Text(
                              '${widget.index}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          '${widget.categories}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            letterSpacing: 4,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 0.5,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '${widget.description} ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,

                          fontWeight: FontWeight.bold,
                          //fontSize: 16
                        ),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '${widget.vues} vues ${widget.commentaires} commentaires ${widget.date}',
                      style: TextStyle(color: Colors.black),
                    ),
                    Divider(),
                  ],
                ),
              ),
              Image.network(
                'http://10.0.2.2:8000${widget.image}',
                width: widget.screenW * 0.3,
                height: widget.screenH,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
