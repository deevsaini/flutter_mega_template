/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:date/pages/filter.dart';
import 'package:date/pages/friend_profile.dart';
import 'package:date/pages/suggest.dart';
import 'package:flutter/material.dart';
import 'package:date/pages/notification.dart';
import '../components/styles.dart' as style;

class Home extends StatefulWidget {
  static const String id = 'home';

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  List<Item> profileList = <Item>[
    const Item('John', 'assets/images/1.jpg'),
    const Item('tigarian', 'assets/images/2.jpg'),
    const Item('Snow', 'assets/images/3.jpg'),
    const Item('Jey', 'assets/images/4.jpg'),
    const Item('Katrina', 'assets/images/5.jpg'),
    const Item('John', 'assets/images/6.jpg'),
    const Item('bien', 'assets/images/7.jpg'),
    const Item('roger', 'assets/images/8.jpg'),
    const Item('steve', 'assets/images/4.jpg'),
  ];

  List<String> gridList = [
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
    'assets/images/8.jpg',
    'assets/images/1.jpg',
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
        automaticallyImplyLeading: false,
        backgroundColor: style.appColor,
        centerTitle: true,
        title: const Text(
          'Logo',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontFamily: 'semi-bold'),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.view_carousel_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Suggest()));
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notifications()));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Filter()));
            },
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.only(right: 16, top: 16, left: 16),
                child: Text(
                  'Stories',
                  style: TextStyle(fontSize: 14),
                )),
            _buildProfileSlider(),
            _build2ColGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileSlider() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        height: 115,
        margin: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(width: 1, color: Colors.black12)),
        ),
        padding: const EdgeInsets.all(0),
        child: ListView(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: profileList.map((e) {
            return InkWell(
              child: Container(
                margin: const EdgeInsets.only(left: 16, top: 20),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          image: DecorationImage(
                              image: AssetImage(e.img), fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        e.name,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _build2ColGrid() {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            childAspectRatio: 85 / 100,
            physics: const ScrollPhysics(),
            children: gridList.sublist(0, 8).map((e) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new FriendProfile()));
                },
                child: Container(
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: Border.all(width: 1, color: Colors.black12)),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 175,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(e), fit: BoxFit.cover),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                      const Text(
                        'John Doe',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontFamily: 'bold'),
                      ),
                      const Text(
                        '30 km',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontFamily: 'semi-bold'),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class Item {
  const Item(this.name, this.img);
  final String name;
  final String img;
}
