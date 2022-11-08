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

class share extends StatefulWidget {
  share({Key? key}) : super(key: key);

  static const String page_id = "Share";

  @override
  State<share> createState() => _shareState();
}

class _shareState extends State<share> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_circle_left_outlined)),
      title: Text(
        'Share',
        style: headText(),
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage('assets/images/m2.png'),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Can\'t you see me',
                        style: TextStyle(fontFamily: 'medium', fontSize: 16),
                      ),
                      Text(
                        'Tommorrow x Together',
                        style: TextStyle(fontSize: 12, color: Colors.white60),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          share('assets/images/twitter.png', 'Twitter'),
          share('assets/images/facebook.png', 'Facebook'),
          share('assets/images/link.png', 'LinkdIn'),
          share('assets/images/insta.png', 'Instagram'),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Icon(Icons.link_outlined),
              SizedBox(
                width: 10,
              ),
              Text('Copy Link')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(Icons.more_horiz),
              SizedBox(
                width: 10,
              ),
              Text('More')
            ],
          ),
        ],
      ),
    );
  }

  Widget share(route, text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Image.asset(
            route,
            height: 20,
            width: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
          )
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xFFFE3047),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage('assets/images/art3.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You are my sunshine',
                        style: headText(),
                      ),
                      Text('By adward micheal')
                    ],
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: appColor,
                  ))
            ],
          ),
          Column(
            children: [
              Slider(
                value: _value.toDouble(),
                min: 0.0,
                max: 5.0,
                activeColor: appColor,
                inactiveColor: Colors.white,
                onChanged: (double newValue) {
                  setState(() {
                    _value = newValue.round();
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '02:35',
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      '03:12',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
