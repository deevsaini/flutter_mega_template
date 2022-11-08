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
import 'package:music/pages/playlist.dart';
import 'package:music/pages/setting.dart';

class myProfile extends StatefulWidget {
  myProfile({Key? key}) : super(key: key);

  static const String page_id = "My Profile";

  @override
  State<myProfile> createState() => _myProfileState();
}

class _myProfileState extends State<myProfile> {
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
      automaticallyImplyLeading: false,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        'My Profile',
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Color(0xFFFE3047),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage('assets/images/art2.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Jaydeep Hirani',
                    style: TextStyle(
                        color: Color(0xFFFE3047),
                        fontFamily: 'medium',
                        fontSize: 16),
                  ),
                  Text(
                    'jaydeephirani5@gmail.com',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            category('General', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => setting()));
            }),
            category('Playlist', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => playlist()));
            }),
            category('Upgrade To Premium', () {}),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.white))),
              child: category('Theme', () {}),
            ),
            category('History', () {}),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.white))),
              child: category('About', () {}),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Logout',
                  style: TextStyle(color: appColor, fontSize: 16),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget category(text, route) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: route,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(color: appColor, fontSize: 16),
                ),
                Text('Lorem impus dolor sit amet')
              ],
            ),
            Icon(
              Icons.keyboard_arrow_right,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
