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
import 'package:spotify/pages/notification.dart';
import 'package:spotify/pages/recentPlayed.dart';
import 'package:spotify/pages/settings.dart';
import 'package:spotify/pages/songList.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  static const String page_id = "Home";

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
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
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        'Good Morning',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => notification()));
          },
          icon: Icon(Icons.notifications_outlined),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => recentPlayed()));
          },
          icon: Icon(Icons.access_time),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => settings()));
          },
          icon: Icon(Icons.settings_outlined),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Try something else',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tryContainer('assets/images/s1.jpg'),
                  tryContainer('assets/images/s2.jpg'),
                  tryContainer('assets/images/s3.jpg'),
                  tryContainer('assets/images/s4.jpg'),
                  tryContainer('assets/images/s5.jpg'),
                  tryContainer('assets/images/s6.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage(
                          ('assets/images/s4.jpg'),
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MORE LIKE',
                          style: TextStyle(color: Colors.white60, fontSize: 12),
                        ),
                        Text(
                          'Arjit Singh',
                          style: headText(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tryContainer('assets/images/s7.jpg'),
                  tryContainer('assets/images/s8.jpg'),
                  tryContainer('assets/images/s9.jpg'),
                  tryContainer('assets/images/s10.jpg'),
                  tryContainer('assets/images/s2.jpg'),
                  tryContainer('assets/images/s3.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Fresh new music',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tryContainer('assets/images/s4.jpg'),
                  tryContainer('assets/images/s5.jpg'),
                  tryContainer('assets/images/s6.jpg'),
                  tryContainer('assets/images/s7.jpg'),
                  tryContainer('assets/images/s8.jpg'),
                  tryContainer('assets/images/s9.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Recommended for today',
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
              height: 20,
            ),
            Text(
              'Shows to try',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  showContainer('assets/images/s7.jpg'),
                  showContainer('assets/images/s6.jpg'),
                  showContainer('assets/images/s5.jpg'),
                  showContainer('assets/images/s4.jpg'),
                  showContainer('assets/images/s9.jpg'),
                  showContainer('assets/images/s1.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Throwback',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tryContainer('assets/images/s3.jpg'),
                  tryContainer('assets/images/s2.jpg'),
                  tryContainer('assets/images/s10.jpg'),
                  tryContainer('assets/images/s9.jpg'),
                  tryContainer('assets/images/s6.jpg'),
                  tryContainer('assets/images/s1.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Today\'s boggest hits',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tryContainer('assets/images/s1.jpg'),
                  tryContainer('assets/images/s9.jpg'),
                  tryContainer('assets/images/s5.jpg'),
                  tryContainer('assets/images/s7.jpg'),
                  tryContainer('assets/images/s4.jpg'),
                  tryContainer('assets/images/s2.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Suggested artists',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  artistContainer('assets/images/s3.jpg'),
                  artistContainer('assets/images/s5.jpg'),
                  artistContainer('assets/images/s8.jpg'),
                  artistContainer('assets/images/s6.jpg'),
                  artistContainer('assets/images/s4.jpg'),
                  artistContainer('assets/images/s1.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Sing-along',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tryContainer('assets/images/s8.jpg'),
                  tryContainer('assets/images/s7.jpg'),
                  tryContainer('assets/images/s6.jpg'),
                  tryContainer('assets/images/s2.jpg'),
                  tryContainer('assets/images/s10.jpg'),
                  tryContainer('assets/images/s1.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Workout',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tryContainer('assets/images/s6.jpg'),
                  tryContainer('assets/images/s4.jpg'),
                  tryContainer('assets/images/s2.jpg'),
                  tryContainer('assets/images/s1.jpg'),
                  tryContainer('assets/images/s3.jpg'),
                  tryContainer('assets/images/s5.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Chill',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tryContainer('assets/images/s5.jpg'),
                  tryContainer('assets/images/s9.jpg'),
                  tryContainer('assets/images/s2.jpg'),
                  tryContainer('assets/images/s8.jpg'),
                  tryContainer('assets/images/s4.jpg'),
                  tryContainer('assets/images/s1.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Mood',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tryContainer('assets/images/s4.jpg'),
                  tryContainer('assets/images/s6.jpg'),
                  tryContainer('assets/images/s8.jpg'),
                  tryContainer('assets/images/s10.jpg'),
                  tryContainer('assets/images/s2.jpg'),
                  tryContainer('assets/images/s1.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Instrumental',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tryContainer('assets/images/s8.jpg'),
                  tryContainer('assets/images/s2.jpg'),
                  tryContainer('assets/images/s6.jpg'),
                  tryContainer('assets/images/s5.jpg'),
                  tryContainer('assets/images/s7.jpg'),
                  tryContainer('assets/images/s1.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Spotify original & exclusive shows',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  showContainer('assets/images/s7.jpg'),
                  showContainer('assets/images/s9.jpg'),
                  showContainer('assets/images/s1.jpg'),
                  showContainer('assets/images/s3.jpg'),
                  showContainer('assets/images/s5.jpg'),
                  showContainer('assets/images/s6.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tryContainer(image) {
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
              child: Text(
                'Pritam ,Shreya Ghoshal, Tanishk Baghi, Arjit Singh',
                style: TextStyle(fontSize: 12),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                softWrap: false,
              ),
            )
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

  Widget showContainer(image) {
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
                borderRadius: BorderRadius.circular(10),
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
                children: [
                  Text(
                    'The Mythpat Prodcast',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(fontFamily: 'medium'),
                  ),
                  Text(
                    'Show Spotyfi Studios',
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

  Widget artistContainer(image) {
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
                borderRadius: BorderRadius.circular(100),
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
                children: [
                  Text(
                    'Mithoon',
                    style: TextStyle(fontSize: 12),
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
