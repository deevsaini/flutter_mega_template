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

class artistDetail extends StatefulWidget {
  artistDetail({Key? key}) : super(key: key);

  static const String page_id = "Artist Detail";

  @override
  _artistDetailState createState() => _artistDetailState();
}

class _artistDetailState extends State<artistDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    ('assets/images/s1.jpg'),
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Arjun Kanungo',
                        style: TextStyle(fontFamily: 'semi-bold', fontSize: 22),
                      ),
                      Text('2,119,839 monthly listeners'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white60),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text('Following'),
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
                          CircleAvatar(
                            backgroundColor: appColor,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Popular',
                  style: headText(),
                ),
                SizedBox(
                  height: 20,
                ),
                popularList('1'),
                popularList('2'),
                popularList('3'),
                popularList('4'),
                popularList('5'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Artist Pick',
                  style: headText(),
                ),
                SizedBox(
                  height: 20,
                ),
                songList(),
                songList(),
                songList(),
                songList(),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white30),
                    ),
                    child: Text('See discography'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Featuring Arjun Kanungo',
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
                Text(
                  'Fance also like',
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
                  height: 30,
                ),
                Text(
                  'About',
                  style: headText(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          ('assets/images/s1.jpg'),
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Row(
                          children: [
                            Icon(
                              Icons.verified,
                              color: appColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'VERIFIED ARTIST',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '2,111,123',
                                  style: TextStyle(
                                      fontFamily: 'medium', fontSize: 16),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'MONTHLY LISTNER',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum'),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.chevron_right,
                                      size: 40,
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget popularList(number) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(number),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                ('assets/images/s1.jpg'),
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Aaya Na Tu',
                            style:
                                TextStyle(fontFamily: 'medium', fontSize: 16),
                          ),
                          Text('27,049,550')
                        ],
                      )
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
                  icon: Icon(Icons.more_vert))
            ],
          )
        ],
      ),
    );
  }

  Widget songList() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    ('assets/images/s10.jpg'),
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
                    'Tera Tha Tera Hoon',
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                  Text(
                    'Latest release • Single',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ],
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
              child: Text(
                'Arjun Kanungo Radio',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                softWrap: false,
                style: TextStyle(fontFamily: 'medium'),
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
                    'Arjun Kanungo',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                InkWell(
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_add_outlined,
                        color: appColor,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Following')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Row(
                    children: [
                      Icon(Icons.block),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Don\'t play this')
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
}
