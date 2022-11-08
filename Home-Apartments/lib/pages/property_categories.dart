/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/explore.dart';

import '../components/styles.dart';

class PropertyCategories extends StatefulWidget {
  static const String id = 'PropertyCategories';

  const PropertyCategories({Key? key}) : super(key: key);

  @override
  _PropertyCategoriesState createState() => _PropertyCategoriesState();
}

class _PropertyCategoriesState extends State<PropertyCategories>
    with SingleTickerProviderStateMixin {
  List<Item> Categories = [
    Item('assets/images/slide1.png', 'House (3.4k)'),
    Item('assets/images/slide2.png', 'Appartment'),
    Item('assets/images/slide3.jpg', 'Commercial'),
    Item('assets/images/home.jpg', 'Land Plot'),
  ];
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          leading: Container(
            padding: EdgeInsets.only(left: 16),
            child: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/images/man.png'),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.grid_view_rounded,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 1,
              color: backgroundColor,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/home.jpg',
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * .3,
                      ),
                    ],
                  ),
                  Positioned(
                      top: 180,
                      width: MediaQuery.of(context).size.width * 1,
                      child: _buildContent()),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: Container(
        color: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: SingleChildScrollView(
          // controller: scrollController,
          child: Column(
            children: [
              boldGreyHead('Find the best'),
              boldHeading("place for your family"),
              SizedBox(height: 10),
              greyText("Easy find. buy or sell any kind of property"),
              SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                shrinkWrap: true,
                children: Categories.map((e) {
                  return _buildCatCard(context, e);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCatCard(context, e) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Explore()));
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              e.img,
              fit: BoxFit.cover,
              width: 120,
              height: 85,
            ),
            SizedBox(height: 10),
            appColorText(e.name),
          ])),
    );
  }

  boldGreyHead(val) {
    return Text(
      val,
      style:
          TextStyle(fontSize: 22, fontFamily: 'medium', color: Colors.black54),
    );
  }

  boldHeading(val) {
    return Text(
      val,
      style: TextStyle(fontSize: 22, fontFamily: 'bold', color: Colors.black),
    );
  }
}

class Item {
  const Item(this.img, this.name);
  final img;
  final name;
}
