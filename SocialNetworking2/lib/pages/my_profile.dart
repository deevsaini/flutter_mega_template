/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:social_network/pages/create_post.dart';
import '../components/styles.dart';

class MyProfile extends StatefulWidget {
  static const String id = 'MyProfile';

  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  TabController? _tabController;
  List<Item> photoList = <Item>[
    Item('assets/images/32.jpg'),
    Item('assets/images/31.jpg'),
    Item('assets/images/34.jpg'),
    Item('assets/images/36.jpg'),
    Item('assets/images/38.jpg'),
    Item('assets/images/35.jpg'),
    Item('assets/images/40.jpg'),
    Item('assets/images/39.jpg'),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                centerTitle: true,
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      )),
                ],
                leading: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreatePost()));
                    },
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                    )),
                title: Text('My Profile',
                    style:
                        TextStyle(color: Colors.black, fontFamily: 'medium')),
                floating: true,
                pinned: true,
                snap: false,
                expandedHeight: 240.0,
                backgroundColor: Colors.white,
                bottom: TabBar(
                  unselectedLabelColor: Colors.black45,
                  labelColor: appColorBtn,
                  controller: _tabController,
                  indicatorColor: appColorBtn,
                  labelStyle: TextStyle(fontFamily: 'medium', fontSize: 14),
                  unselectedLabelStyle:
                      TextStyle(fontFamily: 'medium', fontSize: 14),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(child: Icon(Icons.videocam_outlined)),
                    Tab(child: Icon(Icons.image_outlined)),
                    Tab(child: Icon(Icons.favorite_border))
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          SizedBox(height: 100),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/33.png'),
                                radius: 42,
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    blackBoldText('Vivian Richardsan'),
                                    greyTextSmall('@vivrichard'),
                                    SizedBox(height: 12),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            boldText('120'),
                                            greyTextSmall('Friends')
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            boldText('23m'),
                                            greyTextSmall('Followers')
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            boldText('12k'),
                                            smallText('Following')
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: photoList.map((e) {
                    return _buildPost();
                  }).toList(),
                ),
              ),
              SingleChildScrollView(child: gridProfile()),
              SingleChildScrollView(
                child: Column(
                  children: photoList.map((e) {
                    return _buildPhoto(context, e);
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhoto(context, e) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        height: 450,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          image: DecorationImage(
            image: AssetImage(e.img),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 10,
              left: 10,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(e.img),
                    radius: 18,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('vivan20',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'medium')),
                      Row(
                        children: [
                          Icon(Icons.remove_red_eye,
                              color: Colors.white, size: 18),
                          SizedBox(width: 10),
                          Text('43.3k views',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPost() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              // color: appColor,
              boxShadow: [
                BoxShadow(
                    blurRadius: 20,
                    offset: Offset(0, 24),
                    color: Colors.black38.withOpacity(.4),
                    spreadRadius: -5)
              ],

              image: DecorationImage(
                  image: AssetImage('assets/images/viv.jpg'),
                  fit: BoxFit.fitHeight),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite_border,
                          color: Colors.black54, size: 22),
                      SizedBox(width: 4),
                      greyTextSmall('24')
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Icon(Icons.mode_comment_outlined,
                          color: Colors.black54, size: 22),
                      SizedBox(width: 4),
                      greyTextSmall('32')
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Icon(Icons.remove_red_eye_outlined,
                          color: Colors.black54, size: 22),
                      SizedBox(width: 4),
                      greyTextSmall('820')
                    ],
                  )
                ],
              ),
              Icon(Icons.more_horiz, color: Colors.black38, size: 22),
            ],
          ),
          SizedBox(height: 16),
          RichText(
            text: TextSpan(
                text: 'VivRichard ',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'bold', fontSize: 14),
                children: [
                  TextSpan(
                    text:
                        'Its been a to play on sand of motherland. viv richardsan is best captain  thanks!',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'regular',
                        fontSize: 14),
                  ),
                  TextSpan(
                    text: ' @Gavaskara',
                    style: TextStyle(
                        color: appColor, fontFamily: 'regular', fontSize: 14),
                  )
                ]),
          ),
          Text(
            '#westindies #captain',
            style: TextStyle(
                color: Colors.black, fontFamily: 'bold', fontSize: 14),
          ),
          SizedBox(height: 8),
          greyTextSmall('View more comments'),
        ],
      ),
    );
  }

  Widget gridProfile() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            shrinkWrap: true,
            childAspectRatio: 82 / 100,
            physics: const ScrollPhysics(),
            children: photoList.map((e) {
              return Column(
                children: [
                  Container(
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                        image: AssetImage(e.img),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Text('02:12',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              )),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(e.img),
                                radius: 18,
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Richardson',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontFamily: 'medium')),
                                  Text('220k Views',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class Item {
  const Item(this.img);
  final img;
}
