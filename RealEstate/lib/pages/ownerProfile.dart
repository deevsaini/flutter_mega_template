/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:realestate/helper/drawer.dart';
import 'package:realestate/helper/style.dart';
import 'package:realestate/pages/callScreen.dart';
import 'package:realestate/pages/message.dart';
import 'package:realestate/pages/videoCall.dart';

class ownerProfile extends StatefulWidget {
  ownerProfile({Key? key}) : super(key: key);

  static const String page_id = "Owner Profile";

  @override
  _ownerProfileState createState() => _ownerProfileState();
}

class _ownerProfileState extends State<ownerProfile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<Item> categories = <Item>[
    Item('assets/images/main.jpg'),
    Item('assets/images/near1.jpg'),
    Item('assets/images/near2.jpg'),
    Item('assets/images/main.jpg'),
    Item('assets/images/near1.jpg'),
    Item('assets/images/near2.jpg'),
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
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        icon: Icon(Icons.dehaze_outlined),
      ),
      title: Text(
        'Owner Profile',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_on),
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: appColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(40),
                      child: FittedBox(
                        child: Image(
                            image: AssetImage('assets/images/profile.jpg')),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Jaydeep Hirani',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.amber,
                                  fontFamily: 'medium'),
                            ),
                          ),
                          Text(
                            'Property Owner',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          ratingContainer(),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => videoCall()));
                                },
                                icon: Icon(
                                  Icons.videocam,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => callScreen()));
                                },
                                icon: Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => message()));
                                },
                                icon: Icon(
                                  Icons.chat,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Photo Gallary',
                  style: headText(),
                ),
                Text('View All')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              shrinkWrap: true,
              childAspectRatio: 100 / 100,
              physics: ScrollPhysics(),
              children: categories.map((e) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 150,
                          child: Image.asset(
                            e.img,
                            fit: BoxFit.cover,
                          ),
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
}

class Item {
  const Item(this.img);
  final String img;
}
