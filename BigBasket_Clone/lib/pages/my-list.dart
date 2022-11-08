/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/product-detail.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class MyListPage extends StatefulWidget {
    MyListPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'My List';

    @override
    State<MyListPage> createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {

    List<String> categories = [
        'All', 'Baby Care', 'Bakery, Cakes & Dairy', 'Beauty & Hygiene', 'Beverages', 'Cleaning & Household',
        'Eggs, Meat & Fish', 'Foodgrains, Oil & Masala', 'Fruits & Vegetables', 'Gourmet & World Food',
        'Kitchen, Garden & Pets', 'Snacks & Branded Foods'
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

    List<String> qty = [
      '150 g', '170 g'
    ];

    String dropdownValue = '150 g';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
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
            title: Text('Your Shopping List'),
            titleTextStyle: style.whitePageTitle(),
            actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_outlined)
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
                            color: style.appBackColor,
                            child: Column(
                                children: [
                                    Container(
                                        width: double.infinity,
                                        height: 36,
                                        margin: EdgeInsets.only(bottom: 16),
                                        child: ListView(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            physics: ScrollPhysics(),
                                            children: List.generate(categories.length, (index) {
                                                return _buildSingleTab(categories[index]);
                                            }),
                                        )
                                    ),
                                    Text('Our Recommendations For You',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                    Text('Based on what customers like you have bought',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13
                                        ),
                                    ),
                                ],
                            ),
                        ),
                        Container(
                            child: ListView(
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                children: List.generate(products.length, (index) {
                                    return _buildSingleItem(products[index]);
                                }),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildSingleTab(category) {
        return Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                    Radius.circular(3)
                )
            ),
            child: Text(category,
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'medium'
                ),
            ),
        );
    }

    Widget _buildSingleItem(product) {
        return InkWell(
            onTap: () {
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => new ProductDetailPage())
              );
            },
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: style.borderBottom(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        decoration: style.outlineDecoration(),
                        child: Image.asset(product.img),
                      ),
                      Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Jonhson\'s Baby'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontFamily: 'medium',
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                Text(product.name,
                                  style: TextStyle(
                                      fontFamily: 'medium',
                                      fontSize: 16
                                  ),
                                ),
                                SizedBox(height: 5),
                                _buildDropDown(),
                                SizedBox(height: 5),
                                RichText(
                                  text: TextSpan(
                                    text: product.offPrice + ' ',
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: 'semi-bold'),
                                    children: <TextSpan>[
                                      TextSpan(text: product.price, style: TextStyle(color: Colors.grey, fontSize: 12, fontFamily: 'regular')),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 3, bottom: 3, right: 4),
                        decoration: buttonDecoration(),
                        child: Row(
                          children: [
                            Text('Har Din Sasta',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: style.appColor
                              ),
                            ),
                            Icon(Icons.arrow_drop_down, size: 16, color: style.appColor)
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 36,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('ADD'),
                          style: style.addButton(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
        );
    }

    buttonDecoration() {
        return BoxDecoration(
            border: Border.all(
              width: 1,
              color: style.appColor,
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(3)
            )
        );
    }

    Widget _buildDropDown() {
        return Container(
            width: double.infinity,
            height: 30,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            decoration: style.outlineDecoration(),
            child: DropdownButton<String>(
                isExpanded: true,
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(fontFamily: 'regular', color: Colors.black),
                underline: SizedBox(),
                onChanged: (String? newValue) {
                    setState(() {
                        dropdownValue = newValue!;
                    });
                },
                items: qty.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            style: TextStyle(fontSize: 12),
                        ),
                    );
                }).toList(),
            )
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