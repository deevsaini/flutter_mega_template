/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:social_network/pages/camera.dart';
import 'package:social_network/pages/comment.dart';
import 'package:social_network/pages/story.dart';
import 'package:social_network/widget/popupMenu.dart';
import '../components/styles.dart';

class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabID = 1;

  List<Item> categoryList = <Item>[
    Item('#Travel'),
    Item('#Food'),
    Item('#Fashion'),
    Item('#Gaming'),
    Item('#Technology'),
    Item('#lorem'),
  ];

  List<Story> storyList = <Story>[
    Story('assets/images/31.jpg'),
    Story('assets/images/32.jpg'),
    Story('assets/images/33.png'),
    Story('assets/images/34.jpg'),
    Story('assets/images/35.jpg'),
    Story('assets/images/36.jpg'),
    Story('assets/images/37.jpg'),
    Story('assets/images/38.jpg'),
    Story('assets/images/39.jpg'),
    Story('assets/images/40.jpg'),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Camera()));
              },
              icon: Icon(Icons.camera_alt_outlined)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            popUpMenu(),
          ],
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black54),
          elevation: 0,
          centerTitle: true,
          title: Text('Feeds',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: EdgeInsets.only(left: 16),
                    child: Row(
                      children: categoryList.map((e) {
                        return _buildCategory(context, e);
                      }).toList(),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: backgroundColor,
                          child:
                              Icon(Icons.add, color: Colors.black38, size: 20),
                        ),
                        Row(
                          children: storyList.map((e) {
                            return _buildStories(context, e);
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                _buildPost(),
                _buildPost(),
              ],
            ),
          ),
        ));
  }

  Widget _buildCategory(context, e) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tabID = e.hashCode;
        });
      },
      child: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: tabID == e.hashCode ? appColorBtn : Colors.white,
            border: Border.all(
                color: tabID == e.hashCode ? appColorBtn : Colors.black38),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Text(
            e.name,
            style: TextStyle(
                color: tabID == e.hashCode ? Colors.white : Colors.black38,
                fontSize: 12),
          )),
    );
  }

  Widget _buildStories(context, e) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProfileStory()));
      },
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 8, top: 8, bottom: 10),
            child: CircleAvatar(
              backgroundColor: appColorBtn,
              radius: 32,
              child: CircleAvatar(
                backgroundImage: AssetImage(e.img),
                radius: 30,
              ),
            ),
          ),
          Positioned(
              top: 16,
              right: 4,
              child: Container(
                width: 10,
                height: 10,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                    border: Border.all(width: 1, color: Colors.white)),
              )),
        ],
      ),
    );
  }

  Widget _buildPost() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
                    boldText('Vivian Richardson'),
                    smallText('30 mins ago')
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(Icons.favorite_border, color: Colors.black54, size: 18),
                  SizedBox(width: 4),
                  greyTextSmall('24')
                ],
              ),
              SizedBox(width: 16),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Comments()));
                    },
                    child: Icon(Icons.mode_comment_outlined,
                        color: Colors.black54, size: 18),
                  ),
                  SizedBox(width: 4),
                  greyTextSmall('32')
                ],
              )
            ],
          ),
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
        ],
      ),
    );
  }
}

class Item {
  const Item(this.name);
  final String name;
}

class Story {
  const Story(this.img);
  final img;
}
