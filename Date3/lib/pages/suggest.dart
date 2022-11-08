/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:date/pages/chat.dart';
import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';
import '../components/styles.dart' as style;

var height = AppBar().preferredSize.height;

List<String> images = [
  "assets/images/user1.jpg",
  "assets/images/user2.jpg",
  "assets/images/user3.jpg",
  "assets/images/user4.jpg",
  "assets/images/user5.jpg",
  "assets/images/user6.jpg",
  "assets/images/user7.jpg",
  "assets/images/user8.jpg",
  "assets/images/user9.jpg",
  "assets/images/user10.jpg",
  "assets/images/user11.jpg",
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

class Suggest extends StatefulWidget {
  static const String id = 'Suggest';

  const Suggest({Key? key}) : super(key: key);

  @override
  _SuggestState createState() => _SuggestState();
}

class _SuggestState extends State<Suggest> {
  TCardController _controller = TCardController();

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFf66d06),
        centerTitle: true,
        title: const Text(
          'Suggestions',
          style: TextStyle(color: Colors.white),
        ),
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
            SizedBox(height: 20),
            _index != cards.length
                ? Container(
                    margin: EdgeInsets.symmetric(vertical: 48.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: () {
                            _controller.back();
                          },
                          heroTag: 'cancel',
                          backgroundColor: Colors.white,
                          child: Icon(Icons.close,
                              color: style.appColor, size: 30),
                        ),
                        Padding(padding: EdgeInsets.only(right: 40.0)),
                        FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Chat()));
                          },
                          heroTag: 'message',
                          backgroundColor: Colors.white,
                          child: Icon(Icons.message_outlined,
                              color: style.appColor, size: 30),
                        ),
                        Padding(padding: EdgeInsets.only(right: 40.0)),
                        FloatingActionButton(
                          onPressed: () {
                            _controller.forward();
                          },
                          backgroundColor: Colors.white,
                          heroTag: 'like',
                          child: Icon(Icons.favorite,
                              color: style.appColor, size: 30),
                        ),
                      ],
                    ),
                  )
                : Container(
                    child: (Text('Swiped')),
                  )
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
        child: Container(
      height: MediaQuery.of(context).size.height - 60,
      child: Column(
        children: <Widget>[
          _buildbuttonsRow(),
        ],
      ),
    ));
  }

  Widget _buildbuttonsRow() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 48.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {},
            heroTag: 'cancel',
            backgroundColor: Colors.white,
            child: Icon(Icons.close, color: style.appColor, size: 30),
          ),
          Padding(padding: EdgeInsets.only(right: 40.0)),
          FloatingActionButton(
            onPressed: () {},
            heroTag: 'message',
            backgroundColor: Colors.white,
            child:
                Icon(Icons.message_outlined, color: style.appColor, size: 30),
          ),
          Padding(padding: EdgeInsets.only(right: 40.0)),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            heroTag: 'like',
            child: Icon(Icons.favorite, color: style.appColor, size: 30),
          ),
        ],
      ),
    );
  }
}
