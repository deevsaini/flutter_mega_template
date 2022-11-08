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
import 'package:socialnetworking/pages/messageDetail.dart';
import 'package:socialnetworking/pages/videoCall.dart';
import 'package:socialnetworking/pages/voiceCall.dart';

class messages extends StatefulWidget {
  messages({Key? key}) : super(key: key);

  static const String page_id = "Messages";

  @override
  _messagesState createState() => _messagesState();
}

class _messagesState extends State<messages> {
  int tabID = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppbar(),
        body: _buildBody(),
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.add),
            backgroundColor: new Color(0xFFFD0289),
            onPressed: () {}));
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.white),
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              hintText: 'Search',
              prefixIcon: Icon(
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
            _buildSegment(),
            if (tabID == 1) chatContainer() else if (tabID == 2) callContainer()
          ],
        ),
      ),
    );
  }

  chatContainer() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          chatList(),
          chatList(),
          chatList(),
          chatList(),
          chatList(),
          chatList(),
          chatList(),
          chatList(),
          chatList(),
        ],
      ),
    );
  }

  Widget chatList() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => messageDetail()));
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/images/image2.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hardik Gohil',
                      style: TextStyle(fontFamily: 'medium', fontSize: 16),
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text Lorem Ipsum is ',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  '15 min',
                  style: TextStyle(color: Colors.grey),
                ),
                CircleAvatar(
                  backgroundColor: appColor,
                  radius: 15,
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontFamily: 'medium'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  callContainer() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          videoList(),
          videoList(),
          videoList(),
          videoList(),
          videoList(),
          videoList(),
          videoList(),
          videoList(),
        ],
      ),
    );
  }

  Widget videoList() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage('assets/images/image2.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hardik Gohil',
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                  Text(
                    'Video Call',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    '15 min',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => videoCall()));
                },
                icon: Icon(
                  Icons.videocam_outlined,
                  color: appColor,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => voiceCall()));
                },
                icon: Icon(
                  Icons.call_outlined,
                  color: appColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration(1),
                  child: Text('Chats', style: segmentText(1)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: segmentDecoration(2),
                    child: Text('Calls', style: segmentText(2)),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 2,
                color: tabID == val ? appColor : Colors.transparent)));
  }

  segmentText(val) {
    return TextStyle(
        fontSize: 16,
        fontFamily: tabID == val ? 'bold' : 'semibold',
        color: tabID == val ? appColor : Colors.grey);
  }
}
