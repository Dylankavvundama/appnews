import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        color: Colors.white,
        width: screenW,
        height: screenH * 0.2,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenW * 0.6,
                height: screenH * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: screenH * 0.07,
                          width: screenW * 0.07,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                          child: Center(
                            child: Text(
                              '${index}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          '${categories}',
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
                        '${description} ',
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
                      '${vues} vues ${commentaires} commentaires ${date}',
                      style: TextStyle(color: Colors.black),
                    ),
                       Divider(),
                  ],
                ),
              ),
              Image.asset(
                '${image}',
                width: screenW * 0.3,
                height: screenH,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

