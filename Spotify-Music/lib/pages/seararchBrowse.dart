/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:spotify/helper/style.dart';
import 'package:spotify/pages/songList.dart';

class searchBrowse extends StatefulWidget {
  searchBrowse({Key? key}) : super(key: key);

  static const String page_id = "Search Browse";

  @override
  _searchBrowseState createState() => _searchBrowseState();
}

class _searchBrowseState extends State<searchBrowse> {
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
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  recomContainer('assets/images/s10.jpg'),
                  recomContainer('assets/images/s9.jpg'),
                  recomContainer('assets/images/s8.jpg'),
                  recomContainer('assets/images/s4.jpg'),
                  recomContainer('assets/images/s3.jpg'),
                  recomContainer('assets/images/s5.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  recomContainer('assets/images/s1.jpg'),
                  recomContainer('assets/images/s2.jpg'),
                  recomContainer('assets/images/s3.jpg'),
                  recomContainer('assets/images/s4.jpg'),
                  recomContainer('assets/images/s6.jpg'),
                  recomContainer('assets/images/s5.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  recomContainer('assets/images/s5.jpg'),
                  recomContainer('assets/images/s6.jpg'),
                  recomContainer('assets/images/s7.jpg'),
                  recomContainer('assets/images/s4.jpg'),
                  recomContainer('assets/images/s1.jpg'),
                  recomContainer('assets/images/s5.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget recomContainer(image) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => songList()));
        },
        child: Column(
          children: [
            Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      (image),
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hero',
                    style: TextStyle(fontFamily: 'medium'),
                  ),
                  Text(
                    'Pritam ,Shreya Ghoshal, Tanishk Baghi, Arjit Singh',
                    style: TextStyle(fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: false,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
