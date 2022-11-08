/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:music/helper/style.dart';

class gendre extends StatefulWidget {
  gendre({Key? key}) : super(key: key);

  static const String page_id = "Gendre";

  @override
  _gendreState createState() => _gendreState();
}

class _gendreState extends State<gendre> {
  List<int> list = [1, 2, 3, 4, 5, 6, 7];
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
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_circle_left_outlined)),
      title: Text(
        'Gendre',
        style: headText(),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'See all',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                buttons('Jazz'),
                buttons('Pop'),
                buttons('Rock'),
                buttons('Classic'),
                buttons('EDM'),
                buttons('Other'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            for (var i in list) listContainer(),
          ],
        ),
      ),
    );
  }

  Widget buttons(text) {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 5),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontFamily: 'medium'),
        ),
        style: TextButton.styleFrom(
            elevation: 0,
            backgroundColor: appColor,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5)),
      ),
    );
  }

  Widget listContainer() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.white),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/art3.jpg'),
                    fit: BoxFit.cover)),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lila john',
                    style: TextStyle(color: appColor),
                  ),
                  Text('35 songs'),
                  Text('4 Albums'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
