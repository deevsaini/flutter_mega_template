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

class search extends StatefulWidget {
  search({Key? key}) : super(key: key);

  static const String page_id = "Search";

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
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
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.white),
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
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
                  discoverContainer('assets/images/image1.jpg'),
                  discoverContainer('assets/images/image2.jpg'),
                  discoverContainer('assets/images/s1.jpg'),
                  discoverContainer('assets/images/s2.jpg'),
                  discoverContainer('assets/images/s3.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            activityContainer(),
            activityContainer(),
            activityContainer(),
            activityContainer(),
            activityContainer(),
          ],
        ),
      ),
    );
  }

  Widget discoverContainer(image) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Container(
            height: 130,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 10),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 2, color: appColor),
                image: DecorationImage(
                    image: AssetImage('assets/images/image2.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget activityContainer() {
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
                        'Jaydeep Hirani',
                        style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '5 min ago',
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
                    image: AssetImage('assets/images/s3.jpg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.favorite_outline,
                    color: appColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('110'),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.chat_bubble_outline),
                  SizedBox(
                    width: 5,
                  ),
                  Text('80'),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.ios_share_outlined,
                    size: 20,
                  )
                ],
              ),
              Icon(Icons.bookmark_outline)
            ],
          ),
        ],
      ),
    );
  }
}
