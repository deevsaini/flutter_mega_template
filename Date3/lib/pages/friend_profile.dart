/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

class FriendProfile extends StatefulWidget {
  static const String id = 'FriendProfile';

  const FriendProfile({Key? key}) : super(key: key);

  @override
  _FriendProfileState createState() => _FriendProfileState();
}

class _FriendProfileState extends State<FriendProfile> {
  List<String> images = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
  ];
  // double deviceWidth;
  int tabID = 1;
  bool val1 = true;
  bool val2 = true;

  @override
  Widget build(BuildContext context) {
    // deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            _buildCarousel(),
            _hotelDesc(),
          ],
        ),
      ),
    );
  }

  Widget _buildCarousel() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/mobile.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
            child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: const Icon(Icons.chevron_left, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Row(
                children: [
                  IconButton(
                      icon: const Icon(Icons.favorite_border,
                          color: Colors.white),
                      onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.share, color: Colors.white),
                      onPressed: () {}),
                ],
              ),
            ],
          ),
        )),
      ],
    );
  }

  Widget _hotelDesc() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "John Doe 23",
            style: TextStyle(fontSize: 22, fontFamily: "bold"),
          ),
          const Text(
            "Florida, USA",
            style: TextStyle(
                fontSize: 16, color: Colors.grey, fontFamily: "medium"),
          ),
          const SizedBox(height: 16),
          Container(
              child: Row(
            children: [
              const Icon(Icons.school, color: Colors.grey),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Flutter Developer",
                  style: TextStyle(
                      fontSize: 16, color: Colors.grey, fontFamily: "medium"),
                ),
              )
            ],
          )),
          Container(
              child: Row(
            children: [
              const Icon(Icons.category_outlined, color: Colors.grey),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Music, Traveling, Netflix",
                  style: TextStyle(
                      fontSize: 16, color: Colors.grey, fontFamily: "medium"),
                ),
              )
            ],
          )),
          const SizedBox(height: 16),
          const InkWell(
            child: Text(
              'About',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          const SizedBox(height: 5),
          const Text(
              'Hello everyone, this is john and this is details for testing. this is about dummy details.',
              style: TextStyle(
                  fontSize: 14, color: Colors.grey, fontFamily: "medium")),
          Container(
            margin: const EdgeInsets.only(top: 20),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Gender',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                InkWell(
                  child: Row(
                    children: [
                      const Text(
                        'Female',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  const Item(this.name, this.icn);
  final IconData icn;
  final String name;
}
