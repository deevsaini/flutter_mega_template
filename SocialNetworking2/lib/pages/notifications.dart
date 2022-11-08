/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:social_network/pages/chat.dart';
import '../components/styles.dart';

class Notifications extends StatefulWidget {
  static const String id = 'Notifications';

  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
          title: Text('Notifications',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildNotitfication('Vivian', 'liked your posts'),
                    _buildNotitfication('Mary', 'comment on your posts'),
                    _buildNotitfication('Vivian', 'liked your 4 posts'),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: greyText('Friends Request'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildRequest('Cortana'),
                    _buildRequest('Jarvis'),
                    _buildRequest('Alexa'),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildNotitfication(name, text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Chat()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black26)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 8, top: 8, bottom: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/37.jpg'),
                radius: 26,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    boldText(name),
                    SizedBox(width: 4),
                    greyText(text)
                  ]),
                  SizedBox(height: 6),
                  greyTextSmall('30 mins ago'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRequest(name) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black26)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 8, top: 8, bottom: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/37.jpg'),
                radius: 26,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    boldText(name),
                    SizedBox(width: 4),
                    greyText('Followed you')
                  ]),
                  SizedBox(height: 6),
                  greyTextSmall('30 mins ago'),
                ],
              ),
            ),
            OutlinedButton(
              child: greyTextSmall("Follow"),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: appColor,
                ),
                backgroundColor: Colors.white,
                primary: appColorBtn,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
