/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:social_network/widget/text_btn.dart';

class LiveTV extends StatefulWidget {
  static const String id = 'LiveTV';

  const LiveTV({Key? key}) : super(key: key);

  @override
  _LiveTVState createState() => _LiveTVState();
}

class _LiveTVState extends State<LiveTV> {
  List<Item> gridList = <Item>[
    Item('assets/images/37.jpg', '4:20', 'Lunafreya', '4.3m views'),
    Item('assets/images/38.jpg', '7:45', 'Noctis', '4.3k views'),
    Item('assets/images/39.jpg', '3:20', 'Freya', '24.3m views'),
    Item('assets/images/40.jpg', '12:48', 'Winter', '12.3m views'),
    Item('assets/images/35.jpg', '4:20', 'cercie', '23.3m views'),
    Item('assets/images/36.jpg', '2:05', 'Arya', '4.3m views'),
    Item('assets/images/34.jpg', '1:47', 'Tyrin', '4.3m views'),
    Item('assets/images/33.png', '4:20', 'Jarvis', '4.3m views'),
    Item('assets/images/32.jpg', '1:52', 'Ryne', '4.3m views'),
    Item('assets/images/31.jpg', '4:47', 'Jackryne', '4.3m views'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black12,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
        ],
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        centerTitle: true,
        title: Text('Live TV',
            style: TextStyle(color: Colors.white, fontFamily: 'medium')),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/live.jpg"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 440),
              Stack(
                children: [_buildProfileDetail(), gridProfile()],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileDetail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/2.jpg'),
                radius: 24,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Vivian Richardson',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: 'bold')),
                    Row(
                      children: [
                        Text('01:12',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                        SizedBox(width: 10),
                        Icon(Icons.remove_red_eye,
                            color: Colors.white, size: 18),
                        SizedBox(width: 10),
                        Text('23k views',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: MyTextButton(
                      onPressed: () {},
                      text: 'Watch Live',
                      colors: Colors.white))
            ],
          ),
        ],
      ),
    );
  }

  Widget gridProfile() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            shrinkWrap: true,
            childAspectRatio: 82 / 100,
            physics: const ScrollPhysics(),
            children: gridList.map((e) {
              return Column(
                children: [
                  Container(
                    height: 230,
                    decoration: BoxDecoration(
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
                          child: Text(e.time,
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
                                  Text(e.name,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontFamily: 'medium')),
                                  Text(e.view,
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
  const Item(
    this.img,
    this.time,
    this.name,
    this.view,
  );
  final String img;
  final String time;
  final String name;
  final String view;
}
