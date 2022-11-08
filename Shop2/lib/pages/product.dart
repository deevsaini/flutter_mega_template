/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop2/pages/Item_detail.dart';
import 'package:shop2/widget/appbar.dart';
import 'package:shop2/widget/NavBar.dart';
import 'package:shop2/widget/footer.dart';
import '../components/styles.dart';

class Product extends StatefulWidget {
  static const String id = 'Product';

  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  String dropdownValue = 'New';
  List<Item> gridList = <Item>[
    Item('assets/images/11.jpg', 'Black Suit', 'reversible angora cardigan',
        '\$120'),
    Item('assets/images/12.jpg', 'Suit', 'angora cardo bag', '\$250'),
    Item('assets/images/13.jpg', 'Wood Jacket', 'angora cardo', '\$320'),
    Item('assets/images/14.jpg', 'Pajama', 'reversible angora cardo', '\$410'),
    Item('assets/images/11.jpg', 'Black Suit', 'reversible angora cardigan',
        '\$120'),
    Item('assets/images/12.jpg', 'Suit', 'angora cardo bag', '\$250'),
    Item('assets/images/13.jpg', 'Wood Jacket', 'angora cardo', '\$320'),
    Item('assets/images/14.jpg', 'Pajama', 'reversible angora cardo', '\$410'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.white,
      appBar: BaseAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            _filter(),
            grid2col(),
            SizedBox(height: 30),
            _Grid1(),
            SizedBox(height: 30),
            Container(
              child: Column(
                children: gridList.map((e) {
                  return _buildGridList(context, e);
                }).toList(),
              ),
            ),
            footerMain(),
          ],
        ),
      ),
    );
  }

  Widget _filter() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "8 Result Of dress".toUpperCase(),
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black87, fontSize: 16, letterSpacing: 3),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(
                Icons.arrow_downward,
                size: 12,
              ),
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['New', 'Old', 'Hot']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 24,
            backgroundColor: backgroundColor,
            child: IconButton(
              icon: Icon(
                Icons.grid_view,
                color: Colors.black54,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 24,
            backgroundColor: backgroundColor,
            child: IconButton(
              icon: Icon(
                Icons.filter_list,
                color: Colors.black54,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget grid2col() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            childAspectRatio: 55 / 100,
            physics: const ScrollPhysics(),
            children: gridList.map((e) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ItemDetail()));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(e.img), fit: BoxFit.cover),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 5,
                            left: 0,
                            child: Container(
                              color: appColor,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2),
                              child: const Text("Popular",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(e.name,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'medium',
                          color: Colors.black,
                        )),
                    Text(e.detail,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        )),
                    Text(e.price,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'medium',
                          color: appColor,
                        )),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  Widget _Grid1() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: gridList.map((e) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ItemDetail()));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e.img), fit: BoxFit.cover),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 5,
                        left: 0,
                        child: Container(
                          color: appColor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 2),
                          child: const Text("Popular",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Text(e.name.toUpperCase(),
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'medium',
                      color: Colors.black,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(e.detail,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        )),
                    Text(e.price,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'medium',
                          color: appColor,
                        )),
                  ],
                ),
                SizedBox(height: 16),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildGridList(context, e) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ItemDetail()));
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                  )
                ],
              ),
              child: Image.asset(
                e.img,
                height: 120.0,
                width: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(e.name.toUpperCase(),
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'medium',
                        color: Colors.black,
                      )),
                  Text(e.detail,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      )),
                  Text(e.price,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'medium',
                        color: appColor,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: appColor, size: 14),
                            Text("4.8 Rating",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                )),
                          ],
                        ),
                        Icon(Icons.favorite_border, color: appColor),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Item {
  const Item(
    this.img,
    this.name,
    this.detail,
    this.price,
  );
  final String img;
  final String name;
  final String detail;
  final String price;
}
