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
import 'package:socialnetworking/pages/liveChat.dart';

import '../helper/drawer.dart';

class activities extends StatefulWidget {
  activities({Key? key}) : super(key: key);

  static const String page_id = "Activities";

  @override
  State<activities> createState() => _activitiesState();
}

class _activitiesState extends State<activities> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
      title: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Color(0xFF4946DB)),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.white),
              suffixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              )),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.camera_alt_outlined),
        )
      ],
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
              'Discover',
              style: TextStyle(
                fontFamily: 'medium',
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  discoverContainer('assets/images/s2.jpg', 'Shopping', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => liveChat()));
                  }),
                  discoverContainer('assets/images/image2.jpg', 'Style', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => liveChat()));
                  }),
                  discoverContainer('assets/images/s3.jpg', 'Food', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => liveChat()));
                  }),
                  discoverContainer('assets/images/image1.jpg', 'home', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => liveChat()));
                  }),
                  discoverContainer('assets/images/image2.jpg', 'Shopping', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => liveChat()));
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            feedsContainer(),
            feedsContainer(),
            feedsContainer(),
            feedsContainer(),
            feedsContainer(),
          ],
        ),
      ),
    );
  }

  Widget discoverContainer(image, text, route) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: route,
        child: Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 5),
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontFamily: 'medium'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget feedsContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage('assets/images/man.jpg'),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hardik Gohil',
                        style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '50 min ago',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text('Lorem Ipsum is simply dummy text'),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage('assets/images/s2.jpg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.favorite_outline),
              Icon(Icons.chat_bubble_outline),
              Icon(Icons.ios_share_outlined),
            ],
          )
        ],
      ),
    );
  }
}
