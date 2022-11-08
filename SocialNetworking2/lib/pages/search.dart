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
import '../components/styles.dart';

class Search extends StatefulWidget {
  static const String id = 'Search';

  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Story> storyList = <Story>[
    Story('assets/images/32.jpg', 'Vivian'),
    Story('assets/images/31.jpg', 'Cercie'),
    Story('assets/images/33.png', 'Arya'),
    Story('assets/images/34.jpg', 'Sansa'),
    Story('assets/images/35.jpg', 'Freydes'),
    Story('assets/images/36.jpg', 'Noctis'),
    Story('assets/images/37.jpg', 'Ryne'),
    Story('assets/images/38.jpg', 'Hojo'),
    Story('assets/images/39.jpg', 'Frodo'),
    Story('assets/images/40.jpg', 'Samual'),
  ];

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ],
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black54),
          elevation: 0,
          centerTitle: true,
          title: Text('Search',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBox(),
                SizedBox(height: 16),
                titalClass('Friends you may know'),
                SingleChildScrollView(
                  padding: EdgeInsets.only(left: 16),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: storyList.map((e) {
                      return _buildStories(context, e);
                    }).toList(),
                  ),
                ),
                SizedBox(height: 16),
                titalClass('Photos'),
                SingleChildScrollView(
                  padding: EdgeInsets.only(left: 24),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: photoList.map((e) {
                      return _buildPhoto(context, e);
                    }).toList(),
                  ),
                ),
                SizedBox(height: 16),
                titalClass('Videos'),
                SingleChildScrollView(
                  padding: EdgeInsets.only(left: 24),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: photoList.map((e) {
                      return _buildVideos(context, e);
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  titalClass(title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          blackBoldText(title),
          MyTextButton(
              onPressed: () {}, text: 'View All', colors: Colors.black45)
        ],
      ),
    );
  }

  Widget _buildStories(context, e) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 8, top: 8, bottom: 10),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 32,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(e.img),
                    radius: 30,
                  ),
                ),
                greyTextSmall(e.name)
              ],
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

  Widget _buildPhoto(context, e) {
    return GestureDetector(
      child: Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image:
              DecorationImage(image: AssetImage(e.img), fit: BoxFit.fitHeight),
        ),
      ),
    );
  }

  Widget _buildVideos(context, e) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 8),
        height: 170,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
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
              child: Text('04:12',
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
                  Icon(Icons.remove_red_eye, color: Colors.white, size: 14),
                  SizedBox(width: 6),
                  Text('34k views',
                      style: TextStyle(fontSize: 10, color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  const Item(this.img);
  final img;
}

class Story {
  const Story(this.img, this.name);
  final img;
  final String name;
}
