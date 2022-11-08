/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:realestate/helper/drawer.dart';
import 'package:realestate/helper/style.dart';
import 'package:realestate/pages/notification.dart';

class categories extends StatefulWidget {
  categories({Key? key}) : super(key: key);

  static const String page_id = "Category";

  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  List<Item> categories = <Item>[
    Item('assets/images/villa1.jpg', 'Hill Station'),
    Item('assets/images/villa2.jpg', 'Blue Station'),
    Item('assets/images/villa3.jpg', 'Villas Luxury'),
    Item('assets/images/villa4.jpg', 'Rox Apartnments'),
    Item('assets/images/villa5.jpg', 'Luxury Houses'),
    Item('assets/images/villa6.jpg', 'Duplex Houses'),
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
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.dehaze_outlined),
      ),
      title: Text(
        'Category',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => notification()));
          },
          icon: Icon(Icons.notifications_on),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: suffixIconText(
              'Search by state or zipcode',
              Icon(Icons.search),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            shrinkWrap: true,
            childAspectRatio: 100 / 100,
            physics: ScrollPhysics(),
            children: categories.map((e) {
              return InkWell(
                onTap: () {},
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(e.img), fit: BoxFit.cover),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 15, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.text,
                                style: TextStyle(
                                    fontFamily: 'medium',
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                              Text(
                                '10 Properties',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class Item {
  const Item(this.img, this.text);
  final String img;
  final String text;
}
