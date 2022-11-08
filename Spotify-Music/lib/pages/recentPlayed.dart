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
import 'package:spotify/pages/album.dart';
import 'package:spotify/pages/credits.dart';
import 'package:spotify/pages/songList.dart';

class recentPlayed extends StatefulWidget {
  recentPlayed({Key? key}) : super(key: key);

  static const String page_id = "Recently Played";

  @override
  State<recentPlayed> createState() => _recentPlayedState();
}

class _recentPlayedState extends State<recentPlayed> {
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
      title: Text('Recently Played'),
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
              'Today',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            recentContainer(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Yesterday',
              style: headText(),
            ),
            recentContainer(),
            recentContainer(),
          ],
        ),
      ),
    );
  }

  Widget recentContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        ('assets/images/s4.jpg'),
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 300,
                        child: Text(
                          'Daily Mix 1',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          style: TextStyle(fontFamily: 'medium', fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: Text(
                          'Playlist • Updated 190 days ago',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          style: TextStyle(color: Colors.white60, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => songList()));
              },
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            ('assets/images/s2.jpg'),
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 300,
                            child: Text(
                              'Jaan Hai Meri(from "Radhey")',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              style:
                                  TextStyle(fontFamily: 'medium', fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            width: 300,
                            child: Text(
                              'Playlist • Updated 190 days ago',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return FractionallySizedBox(
                            heightFactor: 0.8,
                            child: songModal(),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget songModal() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          ('assets/images/s4.jpg'),
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    'Tera Tha Tera Hoon',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: false,
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                ),
                Text(
                  'Arjun Kanungo',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Column(
              children: [
                InkWell(
                  child: Row(
                    children: [
                      Icon(Icons.favorite_outline),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Like')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Row(
                    children: [
                      Icon(Icons.remove_circle_outline),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Hide this song')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Row(
                    children: [
                      Icon(Icons.music_note),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Add to playlist')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Row(
                    children: [
                      Icon(Icons.queue_music),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Add to Queue')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => album()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.album_rounded),
                      SizedBox(
                        width: 15,
                      ),
                      Text('View Album')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return FractionallySizedBox(
                          heightFactor: 0.3,
                          child: artistContainer(),
                        );
                      },
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.person_outline),
                      SizedBox(
                        width: 15,
                      ),
                      Text('View Artist')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return FractionallySizedBox(
                          heightFactor: 0.9,
                          child: shareContainer(),
                        );
                      },
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.share),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Share')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => credits()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.person_add_outlined),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Show Credits')
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget shareContainer() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Share'),
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          ('assets/images/s4.jpg'),
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    'Daily Mix 1',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: false,
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                ),
                Text(
                  'Playlist by Spotify',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 90,
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    ('assets/images/watsapp.png'),
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('WhatsApp')
                        ],
                      ),
                    ),
                    Container(
                      width: 90,
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    ('assets/images/insta.png'),
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Instagram')
                        ],
                      ),
                    ),
                    Container(
                      width: 90,
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    ('assets/images/facebook.png'),
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Facebook')
                        ],
                      ),
                    ),
                    Container(
                      width: 90,
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    ('assets/images/twitter.png'),
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Twitter')
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 90,
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    ('assets/images/snap.png'),
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Snapchat')
                        ],
                      ),
                    ),
                    Container(
                      width: 90,
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    ('assets/images/more.png'),
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('More')
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget artistContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Artist',
              style: headText(),
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
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Arjun Kanungo'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
                          ('assets/images/s8.jpg'),
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Mimina Mustehsan'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
