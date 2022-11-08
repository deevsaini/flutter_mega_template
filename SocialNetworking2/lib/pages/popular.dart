/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class Popular extends StatefulWidget {
  static const String id = 'Popular';

  const Popular({Key? key}) : super(key: key);

  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

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
          title: Text('Popular',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TabBar(
            unselectedLabelColor: Colors.black45,
            labelColor: appColorBtn,
            controller: _tabController,
            indicatorColor: appColorBtn,
            labelStyle: TextStyle(fontFamily: 'medium', fontSize: 14),
            unselectedLabelStyle: TextStyle(fontFamily: 'medium', fontSize: 14),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                child: Text('Live TV', style: TextStyle(fontFamily: 'medium')),
              ),
              Tab(
                child: Text('Videos', style: TextStyle(fontFamily: 'medium')),
              ),
              Tab(
                child: Text('Photos', style: TextStyle(fontFamily: 'medium')),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: photoList.map((e) {
                      return _buildPhoto(context, e);
                    }).toList(),
                  ),
                ),
                SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: gridProfile()),
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
        ],
      ),
    );
  }

  Widget _buildPhoto(context, e) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10),
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
