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

class discover extends StatefulWidget {
  discover({Key? key}) : super(key: key);

  static const String page_id = "Discover";

  @override
  State<discover> createState() => _discoverState();
}

class _discoverState extends State<discover> {
  List<int> list = [1, 2, 3, 4, 5, 6];
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
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_circle_left_outlined)),
      title: Text(
        'Discover',
        style: headText(),
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                focusedBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: appColor)),
                enabledBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: appColor)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                hintText: 'Search your artist',
                hintStyle: TextStyle(color: Colors.grey.shade400),
                suffixIcon: Icon(Icons.search, color: Colors.white54),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Recomendations',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            for (var i in list) recomendations(),
          ],
        ),
      ),
    );
  }

  Widget recomendations() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage('assets/images/m1.jpg'),
                    fit: BoxFit.cover)),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Note by the moon',
                  ),
                  Text(
                    'GO17',
                    style: TextStyle(fontSize: 12, color: Colors.white60),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_circle_outline,
                color: appColor,
              ))
        ],
      ),
    );
  }
}
