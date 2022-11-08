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
import 'package:shop2/pages/checkout.dart';
import 'package:shop2/widget/appbar.dart';
import 'package:shop2/widget/NavBar.dart';
import '../components/styles.dart';

class Cart extends StatefulWidget {
  static const String id = 'Cart';

  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Item> gridList = <Item>[
    Item('assets/images/11.jpg', 'Black Suit', 'reversible angora cardigan',
        '\$120'),
    Item('assets/images/12.jpg', 'Suit', 'angora cardo bag', '\$250'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.white,
      appBar: BaseAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 40),
            centerHeading("Cart"),
            sepLine(),
            SizedBox(height: 30),
            Container(
              child: Column(
                children: gridList.map((e) {
                  return _buildGridList(context, e);
                }).toList(),
              ),
            ),
          ],
        ),
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
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  e.img,
                  height: 150.0,
                  width: 110.0,
                  fit: BoxFit.cover,
                ),
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
                  Row(
                    children: <Widget>[
                      Icon(Icons.remove_circle, color: Colors.grey, size: 26),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "1",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(Icons.add_circle, color: appColor, size: 26),
                    ],
                  ),
                  Text(e.price,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'medium',
                        color: appColor,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 180,
      child: Column(
        children: [
          Divider(thickness: 1, color: Colors.black26),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Sub Total".toUpperCase(),
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'medium',
                    color: Colors.black,
                  )),
              Text("\$240",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'medium',
                    color: appColor,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
                "shipping charges, taxrs discount codes are calculated at the time of accounting.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                )),
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              child:
                  Text("Buy Now".toUpperCase(), style: TextStyle(fontSize: 16)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Checkout()));
              },
              style: ElevatedButton.styleFrom(
                primary: appColor2,
                onPrimary: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
            ),
          ),
        ],
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
