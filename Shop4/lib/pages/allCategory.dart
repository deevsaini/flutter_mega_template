/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shopping/helper/style.dart';

class allCategories extends StatefulWidget {
  allCategories({Key? key}) : super(key: key);

  static const String page_id = "All Categories";

  @override
  _allCategoriesState createState() => _allCategoriesState();
}

class _allCategoriesState extends State<allCategories> {
  List<Item> categories = <Item>[
    Item('Men', 'assets/images/man.jpg'),
    Item('Women', 'assets/images/woman.jpg'),
    Item('Kids', 'assets/images/kid.jpg'),
  ];

  List<String> cat = [
    'Accessories',
    'Brands',
    'About',
    'Support',
    'FAQ\'s',
  ];

  String tabName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.dehaze),
      ),
      title: Text(
        'W',
        style:
            TextStyle(fontFamily: 'semi-bold', fontSize: 22, color: appColor),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined),
            )
          ],
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            children: categories.map((e) {
              return InkWell(
                onTap: () {
                  setState(() {
                    tabName = e.name;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 160,
                      width: double.infinity,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(e.img), fit: BoxFit.cover)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            e.name.toUpperCase(),
                            style: TextStyle(
                                fontFamily: 'semi-bold',
                                fontSize: 22,
                                color: Colors.white,
                                height: 1.2),
                          ),
                          Text(
                            'T-shirts, Shits, Jeans, Shoes',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    tabName == e.name
                        ? Column(
                            children: cat.map((item) {
                              return ExpansionTile(
                                backgroundColor: Colors.grey[200],
                                collapsedBackgroundColor: Colors.transparent,
                                title: Text(
                                  item,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'medium',
                                      color: Colors.black),
                                ),
                              );
                            }).toList(),
                          )
                        : SizedBox(height: 0)
                  ],
                ),
              );
            }).toList(),
          ),
        ]),
      ),
    );
  }
}

class Item {
  const Item(this.name, this.img);
  final String name;
  final String img;
}
