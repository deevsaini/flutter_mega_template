/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:socialnetworking/helper/style.dart';
import 'package:socialnetworking/pages/createPost.dart';
import 'package:socialnetworking/pages/editProfile.dart';
import 'package:socialnetworking/pages/settings.dart';
import 'package:socialnetworking/pages/videoDetail.dart';

import '../helper/drawer.dart';

class account extends StatefulWidget {
  account({Key? key}) : super(key: key);

  static const String page_id = "Account";

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Item> categories = <Item>[
    Item('assets/images/image1.jpg'),
    Item('assets/images/image2.jpg'),
    Item('assets/images/man.jpg'),
    Item('assets/images/s1.jpg'),
    Item('assets/images/profile.jpg'),
    Item('assets/images/s2.jpg'),
    Item('assets/images/s3.jpg'),
    Item('assets/images/image2.jpg'),
    Item('assets/images/man.jpg'),
    Item('assets/images/s1.jpg'),
    Item('assets/images/profile.jpg'),
    Item('assets/images/s2.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.white),
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        icon: Icon(Icons.dehaze),
      ),
      title: Text(
        'Profile',
        style: whiteHeadText(),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => settings()));
          },
          icon: Icon(Icons.settings_outlined),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage('assets/images/image2.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => editProfile()));
                          },
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: appColor,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alan Fresco',
                          style: TextStyle(fontFamily: 'medium', fontSize: 18),
                        ),
                        Text(
                          '@alanfresco',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [Text('FOLLOWING'), Text('115')],
                  ),
                  Column(
                    children: [Text('FOLLOWERS'), Text('1115')],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => createPost()));
                          },
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: appColor.withOpacity(0.1),
                            child: Icon(
                              Icons.add,
                              color: appColor,
                            ),
                          ),
                        ),
                        Text('New')
                      ],
                    ),
                  ),
                  storyContainer('assets/images/profile.jpg'),
                  storyContainer('assets/images/image1.jpg'),
                  storyContainer('assets/images/image2.jpg'),
                  storyContainer('assets/images/s1.jpg'),
                  storyContainer('assets/images/s2.jpg'),
                  storyContainer('assets/images/s3.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              childAspectRatio: 100 / 100,
              physics: ScrollPhysics(),
              children: categories.map((e) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => videoDetail()));
                  },
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(e.img), fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget storyContainer(image) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: appColor,
                ),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Text('Business')
        ],
      ),
    );
  }
}

class Item {
  const Item(this.img);
  final String img;
}
