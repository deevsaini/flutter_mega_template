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

class GridTwoHome extends StatefulWidget {
  static const String id = 'GridTwoHome';

  const GridTwoHome({Key? key}) : super(key: key);

  @override
  _GridTwoHomeState createState() => _GridTwoHomeState();
}

class _GridTwoHomeState extends State<GridTwoHome> {
  int tabID = 1;

  List<Category> categoryList = <Category>[
    Category('#Travel'),
    Category('#Food'),
    Category('#Fashion'),
    Category('#Gaming'),
    Category('#Technology'),
    Category('#lorem'),
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
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined))
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
                gridProfile()
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

  Widget gridProfile() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            shrinkWrap: true,
            childAspectRatio: 70 / 100,
            physics: const ScrollPhysics(),
            children: photoList.map((e) {
              return Card(
                child: Column(
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        image: DecorationImage(
                          image: AssetImage(e.img),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          boldText('Cant wait for my holiday to Bali'),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  greyTextSmall('Viv Richard'),
                                  smallText('2 min ago')
                                ],
                              ),
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/38.jpg'),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class Category {
  const Category(this.name);
  final String name;
}

class Item {
  const Item(this.img);
  final img;
}
