/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class SearchPage extends StatefulWidget {
    SearchPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Search';

    @override
    State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

    List<String> popular = [
        'Rice', 'Bread', 'Biscuit', 'Cheese', 'Vegetables',
        'Mango', 'Tea', 'Namkeen', 'Egg', 'Mop',
    ];

    List<Item> products = <Item>[
      Item('assets/images/pro_1.jpg', 'Testies - Nacho Chips - Jalapeno', '\$90', '\$45'),
      Item('assets/images/pro_2.jpg', 'BB Popular - Almond/Badam', '\$90', '\$45'),
      Item('assets/images/pro_3.jpg', 'Testies - Nacho Chips - Cheese', '\$90', '\$45'),
      Item('assets/images/pro_4.jpg', 'BB Royal - Cardamom Green/Elakki', '\$90', '\$45'),
      Item('assets/images/pro_5.jpg', 'BORGES - Extra Virgin Olive Oil', '\$90', '\$45'),
      Item('assets/images/pro_6.jpg', 'BORGES - Extra Virgin Olive Oil', '\$90', '\$45'),
      Item('assets/images/pro_7.jpg', 'BB Royal - Idli - Sooji', '\$90', '\$45'),
      Item('assets/images/pro_8.jpg', 'BB Home - Spin Mop Bucket-360', '\$90', '\$45'),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Color.fromARGB(255, 208, 208, 208),
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(120),
                child: _buildAppBar(),
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildAppBar() {
        return AppBar(
            backgroundColor: style.appColor,
            elevation: 0,
            centerTitle: true,
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(
                color: Colors.white,
            ),
            leading: IconButton(
                onPressed: () {
                    Navigator.of(context).pop();
                },
                icon: Icon(Icons.menu),
            ),
            title: Text('Search Products'),
            titleTextStyle: style.whitePageTitle(),
            actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.qr_code)
                )
            ],
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(120),
                child: Container(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: TextField(
                        decoration: style.searchInputBox('Search Products'),
                    ),
                ),
            ),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                child: Column(
                    children: [
                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            color: Color.fromARGB(255, 247, 247, 247),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('Popular Searches',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                    SizedBox(height: 16),

                                    Wrap(
                                        spacing: 8.0,
                                        runSpacing: 0.0,
                                        children: List.generate(popular.length, (index) {
                                            return Chip(
                                                backgroundColor: Colors.white,
                                                avatar: Icon(Icons.history, size: 20,),
                                                label: Text(popular[index]),
                                            );
                                        }),
                                    ),
                                ],
                            ),

                        ),
                        Container(
                            padding: EdgeInsets.all(16),
                            color: style.appBackColor,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 219, 219, 219),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(5)
                                    )
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Text('Trending Now'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'semi-bold'
                                            ),
                                        ),
                                        Image.asset('assets/images/cat_sasta.png', width: 50)
                                    ],
                                ),
                            ),
                        ),
                        Container(
                            height: 300,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: ListView(
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: List.generate(products.length, (index) {
                                    return Container(
                                        width: 130,
                                        margin: EdgeInsets.only(right: 10),
                                        color: Colors.white,
                                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                        child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                                Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                        Container(
                                                            width: double.infinity,
                                                            height: 110,
                                                            margin: EdgeInsets.only(bottom: 10),
                                                            child: Image.asset(
                                                                products[index].img
                                                            ),
                                                        ),
                                                        Text(products[index].name,
                                                            style: TextStyle(
                                                                fontFamily: 'medium'
                                                            ),
                                                        ),
                                                    ],
                                                ),
                                                Container(
                                                    width: double.infinity,
                                                    child: ElevatedButton(
                                                        onPressed: () {},
                                                        child: Text('up to 50% off'),
                                                        style: ElevatedButton.styleFrom(
                                                            primary: Color.fromARGB(255, 166, 205, 59),
                                                            onPrimary: Colors.black,
                                                            padding: EdgeInsets.all(0),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(5)
                                                            ),
                                                            textStyle: TextStyle(
                                                                fontFamily: 'medium'
                                                            )
                                                        ),
                                                    ),
                                                )
                                            ],
                                        ),
                                    );
                                }),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}

class Item {
  Item(this.img, this.name, this.price, this.offPrice);
  final String img;
  final String name;
  final String price;
  final String offPrice;

}