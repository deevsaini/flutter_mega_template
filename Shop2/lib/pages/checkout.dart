/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop2/widget/appbar.dart';
import 'package:shop2/widget/NavBar.dart';
import '../components/styles.dart';

class Checkout extends StatefulWidget {
  static const String id = 'Checkout';

  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
            centerHeading("Checkout"),
            sepLine(),
            SizedBox(height: 30),
            Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    _address(),
                    Divider(thickness: 1, height: 40, color: Colors.black26),
                    _buildPayment(),
                    Divider(thickness: 1, height: 40, color: Colors.black26),
                    _buildItem(),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _address() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("John Doe",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'medium',
                    color: Colors.black,
                  )),
              Text("20 White House, Black Street",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  )),
              Text("Red Rose NH 1220",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  )),
              Text("(102) 212-6064",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  )),
            ],
          ),
        ),
        Icon(
          Icons.chevron_right,
          color: Colors.black54,
        ),
      ],
    );
  }

  Widget _buildPayment() {
    return InkWell(
      onTap: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                'assets/images/visa.png',
                height: 25.0,
                width: 60.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Master Card ending **20',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'medium',
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  Widget _buildItem() {
    return InkWell(
      onTap: () {},
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
                'assets/images/12.jpg',
                height: 150.0,
                width: 110.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('BlueBerry Jacket'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'medium',
                        color: Colors.black,
                      )),
                  Text('Recycle Boucle Knit Cardigan Pink',
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
                  Text('\$140',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'medium',
                        color: appColor,
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 120,
      child: Column(
        children: [
          Divider(thickness: 1, color: Colors.black26),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total".toUpperCase(),
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
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              child: Text("Checkout".toUpperCase(),
                  style: TextStyle(fontSize: 16)),
              onPressed: () {},
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
