/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;

class notification extends StatefulWidget {
  notification({Key? key}) : super(key: key);

  static const String page_id = "Notification";

  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  List<int> notification = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Notification',
        style: style.headText(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            for (var i in notification) notificatios(),
          ],
        ),
      ),
    );
  }

  Widget notificatios() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            child: Image.asset(
              'assets/images/drink.png',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hey, it\'s time for lunch',
                    style: TextStyle(fontSize: 14, fontFamily: 'medium'),
                  ),
                  Text(
                    'About 1 minutes ago',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
