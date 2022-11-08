/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

var height = AppBar().preferredSize.height;

class Likes extends StatefulWidget {
  static const String id = 'likes';

  const Likes({Key? key}) : super(key: key);

  @override
  _LikesState createState() => _LikesState();
}

class _LikesState extends State<Likes> with SingleTickerProviderStateMixin {
  int tabID = 1;
  List<String> users = [
    'assets/images/1.jpg',
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/1.jpg',
    'assets/images/3.jpg',
    'assets/images/1.jpg',
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/1.jpg',
    'assets/images/3.jpg',
  ];

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFf66d06),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Likes',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildTabs(),
          tabID == 1
              ? Column(
                  children: List.generate(users.length, (index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      decoration: bottomBorder(),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 27,
                                backgroundColor: style.appColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: ClipOval(
                                      child: Image.asset(users[index])),
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text('John Doe',
                                        style: TextStyle(
                                            fontFamily: "semi-bold",
                                            fontSize: 16)),
                                    Padding(
                                      padding: EdgeInsets.only(top: 3),
                                      child: Text('2d',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                    ),
                                  ],
                                ),
                              )),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: buildIconButton(),
                                child: const Text('+ Add',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "semi-bold",
                                      fontSize: 14,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                )
              : Container(),
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                    height: 60,
                    decoration: segmentDecoration(1),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          tabID = 1;
                        });
                      },
                      child: Text('Like', style: textButton()),
                    )),
              ),
              Expanded(
                child: Container(
                    height: 60,
                    decoration: segmentDecoration(2),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          tabID = 2;
                        });
                      },
                      child: Text('Visitors', style: textButton()),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  buildOrangeText() {
    return const TextStyle(
        color: Color.fromARGB(255, 253, 94, 96),
        fontSize: 20,
        fontWeight: FontWeight.bold);
  }

  textButton() {
    return const TextStyle(
        color: Colors.black, fontFamily: 'semi-bold', fontSize: 16);
  }

  bottomBorder() {
    return const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.grey)));
  }

  segmentDecoration(value) {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: tabID == value ? style.appColor : Colors.black12,
          width: 3.0,
        ),
      ),
    );
  }

  buildIconButton() {
    return const BoxDecoration(
        color: style.appColor,
        borderRadius: BorderRadius.all(Radius.circular(50)));
  }
}
