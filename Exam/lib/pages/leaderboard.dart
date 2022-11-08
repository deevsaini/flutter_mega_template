/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:flutter/material.dart';

class leaderboard extends StatefulWidget {
  leaderboard({Key? key}) : super(key: key);

  static const String page_id = "Leaderboard";

  @override
  _leaderboardState createState() => _leaderboardState();
}

class _leaderboardState extends State<leaderboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Text(
        'Leaderboard',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notification_add_outlined),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            leaderboard(Colors.white),
            leaderboard(Colors.blue.shade50),
            leaderboard(Colors.white),
            leaderboard(Colors.blue.shade50),
            leaderboard(Colors.white),
            leaderboard(Colors.blue.shade50),
          ],
        ),
      ),
    );
  }

  Widget leaderboard(color) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 30),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 30)],
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
            bottom: 20,
            left: 5,
            child: Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jaydeep',
                        style: TextStyle(fontFamily: 'medium', fontSize: 16),
                      ),
                      Text(
                        '200 XP',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1, color: appColor)),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Text(
                        '1',
                        style: TextStyle(color: appColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
