/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop2/widget/NavBar.dart';
import 'package:shop2/widget/footer.dart';

class Collection extends StatefulWidget {
  static const String id = 'Collection';

  const Collection({Key? key}) : super(key: key);

  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  List<Item> gridList = <Item>[
    Item('assets/images/11.jpg', '01', 'October Collection'),
    Item('assets/images/12.jpg', '02', 'Black Collection'),
    Item('assets/images/13.jpg', '03', 'Hoe Huen'),
    Item('assets/images/14.jpg', '04', 'Autumn Collection'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text("Logo",
            style: TextStyle(
              letterSpacing: 4,
              fontSize: 28,
            )),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 24,
            ),
            onPressed: () {},
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
          children: [
            Column(
              children: [
                Text(
                  "October",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'bold',
                      fontStyle: FontStyle.italic,
                      fontSize: 32,
                      letterSpacing: 2),
                ),
                Text(
                  "Collection".toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'regular',
                      fontSize: 14,
                      letterSpacing: 6),
                ),
              ],
            ),
            _Grid1(),
            footerMain(),
          ],
        ),
      ),
    );
  }

  Widget _Grid1() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: gridList.map((e) {
          return InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e.img), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(e.id,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        )),
                    Text(e.name.toUpperCase(),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        )),
                  ],
                ),
                SizedBox(height: 25),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Item {
  const Item(
    this.img,
    this.id,
    this.name,
  );
  final String img;
  final String id;
  final String name;
}
