import 'package:flutter/material.dart';
import 'video.dart';

class ListVideo extends StatefulWidget {
  const ListVideo({Key? key}) : super(key: key);

  @override
  State<ListVideo> createState() => _ListVideoState();
}

class _ListVideoState extends State<ListVideo> {
  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('List video'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 5),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            (MaterialPageRoute(builder: (context) {
                              return VideoApp();
                            })));
                      },
                      child: Container(
                        padding: EdgeInsets.all(19),
                        child: Row(
                          children: [
                            Container(
                              height: 55,
                              child: Image.asset('assets/asset/a.jpg'),
                            ),
                            SizedBox(width: 10),
                            Flexible(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('video de nodlan a la maison blance'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'plus de detail ',
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
