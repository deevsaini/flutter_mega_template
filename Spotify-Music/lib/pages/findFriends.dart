/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

class findFriends extends StatefulWidget {
  findFriends({Key? key}) : super(key: key);

  static const String page_id = "Find Friends";

  @override
  _findFriendsState createState() => _findFriendsState();
}

class _findFriendsState extends State<findFriends> {
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
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      title: Text('Find Friends'),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Follow people you know to see whaat they\'re listning to on Spotify.',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Connect Facebook'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  onPrimary: Colors.white,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'We\'ll never post anything without your permission',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
