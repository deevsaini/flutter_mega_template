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
import 'package:music/pages/artistProfile.dart';

class search extends StatefulWidget {
  search({Key? key}) : super(key: key);

  static const String page_id = "Search";

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  List<Item> categories = <Item>[
    Item(
      'assets/images/art1.jpg',
    ),
    Item(
      'assets/images/art2.jpg',
    ),
    Item(
      'assets/images/art1.jpg',
    ),
    Item(
      'assets/images/art3.jpg',
    ),
    Item(
      'assets/images/art3.jpg',
    ),
    Item(
      'assets/images/art1.jpg',
    ),
    Item(
      'assets/images/art2.jpg',
    ),
    Item(
      'assets/images/art1.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        'Search',
        style: headText(),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                enabledBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: appColor)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                hintText: 'Search your artist...',
                suffixIcon: Icon(Icons.search, color: Colors.white54),
                hintStyle: TextStyle(color: Colors.grey.shade400),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text('Select your artist'),
            SizedBox(
              height: 10,
            ),
            listItems(),
          ],
        ),
      ),
    );
  }

  Widget listItems() {
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        childAspectRatio: 70 / 100,
        physics: ScrollPhysics(),
        children: categories.map((e) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new artistProfile()));
            },
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage(
                              (e.img),
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(
                  width: 110,
                  child: Text(
                    'Musical rockstar',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: appColor),
                  ),
                ),
                Text(
                  '101 songs',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Item {
  const Item(this.img);
  final String img;
}
