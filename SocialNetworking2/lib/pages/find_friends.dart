/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';
import '../components/styles.dart';

List<String> images = [
  "assets/images/38.jpg",
  "assets/images/live.jpg",
  "assets/images/38.jpg",
  "assets/images/37.jpg",
  "assets/images/36.jpg",
  "assets/images/35.jpg",
  "assets/images/34.jpg",
  "assets/images/33.png",
  "assets/images/32.jpg",
  "assets/images/31.jpg",
  "assets/images/40.jpg",
];

List<Widget> cards = List.generate(
  images.length,
  (int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 23.0,
            spreadRadius: -13.0,
            color: Colors.black54,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image.asset(
          images[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  },
);

class FindFriends extends StatefulWidget {
  static const String id = 'FindFriends';

  const FindFriends({Key? key}) : super(key: key);

  @override
  _FindFriendsState createState() => _FindFriendsState();
}

class _FindFriendsState extends State<FindFriends> {
  TCardController _controller = TCardController();
  int _index = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ],
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black54),
          elevation: 0,
          centerTitle: true,
          title: Text('Find Friends',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TCard(
                size: Size(400, 600),
                cards: cards,
                controller: _controller,
                onForward: (index, info) {
                  _index = index;
                  setState(() {});
                },
                onBack: (index, info) {
                  _index = index;
                  setState(() {});
                },
                onEnd: () {
                  print('end');
                },
              ),
              _index != cards.length
                  ? Container(
                      margin: EdgeInsets.symmetric(vertical: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                            onPressed: () {
                              _controller.back();
                            },
                            heroTag: 'follow',
                            backgroundColor: appColorBtn,
                            child:
                                Icon(Icons.done, color: Colors.white, size: 30),
                          ),
                          Padding(padding: EdgeInsets.only(right: 40.0)),
                          FloatingActionButton(
                            onPressed: () {
                              _controller.forward();
                            },
                            backgroundColor: appColor2,
                            heroTag: 'reject',
                            child: Icon(Icons.close,
                                color: Colors.white, size: 30),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      child: (Text('Swiped')),
                    )
            ],
          ),
        ));
  }
}
