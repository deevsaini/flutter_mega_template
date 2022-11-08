/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

class searchPlay extends StatefulWidget {
  searchPlay({Key? key}) : super(key: key);

  static const String page_id = "Search Play";

  @override
  _searchPlayState createState() => _searchPlayState();
}

class _searchPlayState extends State<searchPlay> {
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
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.black12,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  suffixIcon: Icon(
                    Icons.camera_alt_outlined,
                  ),
                  hintText: 'Search',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
      ),
    );
  }
}
