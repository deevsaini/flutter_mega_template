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
import 'package:spotify/pages/artistDetail.dart';
import 'package:spotify/pages/songList.dart';

class notification extends StatefulWidget {
  notification({Key? key}) : super(key: key);

  static const String page_id = "Notification";

  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
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
    return Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What\'s New',
              style: headText(),
            ),
            SizedBox(
              width: 300,
              child: Text(
                'The latest releases from artist,podcast, and shows',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Text('Music'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Text('Podcast & Shows'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'New',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            notificationlist(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Earlier',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            notificationlist(),
            notificationlist(),
            notificationlist(),
            notificationlist(),
            notificationlist(),
            notificationlist(),
            notificationlist(),
            notificationlist(),
            notificationlist(),
            notificationlist(),
            notificationlist(),
          ],
        ),
      ),
    );
  }

  Widget notificationlist() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => songList()));
            },
            child: Row(
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
                        Text(
                          '16 hrs ago',
                          style: TextStyle(color: Colors.white60, fontSize: 12),
                        ),
                        SizedBox(
                          width: 300,
                          child: Text(
                            'Tera Tha Tera Hoon',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            softWrap: false,
                            style:
                                TextStyle(fontFamily: 'medium', fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: Text(
                            'Arjun Kanungo, lulia Vantur',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Single',
            style: TextStyle(color: Colors.white60, fontSize: 12),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return FractionallySizedBox(
                            heightFactor: 0.6,
                            child: bottomModal(),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.more_vert),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomModal() {
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => artistDetail()));
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
}
