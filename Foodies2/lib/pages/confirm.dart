/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food2/pages/cart.dart';
import 'package:food2/pages/order_status.dart';

import '../components/styles.dart' as style;

class Confirm extends StatefulWidget {
  static const String id = 'Confirm';

  const Confirm({Key? key}) : super(key: key);

  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  List<Item> time = <Item>[
    const Item('15%'),
    const Item('20%'),
    const Item('25%'),
    const Item('custom'),
  ];

  var _value;

  // final _value = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text(
          "Confirm Order",
          style: TextStyle(color: Colors.black, fontFamily: 'semibold'),
        ),
      ),
      body: _buildBody(),
      bottomNavigationBar: _bottomNav(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildLocation(),
          _buildBoldFont('order Summary', '7 items'),
          _buildItems(),
        ],
      ),
    );
  }

  Widget _buildLocation() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.restaurant_menu,
                size: 24,
                color: Colors.blue,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Harirambapa',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "semibold")),
                    Text('whitehouse, gujarat 20, India',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontFamily: "medium"))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 24,
                color: style.appColor,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('20 Horizon House',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "semibold")),
                    Text('whitehouse, gujarat 20, India',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontFamily: "medium"))
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                size: 18,
              ),
            ],
          ),
          Divider(thickness: 1, color: Colors.black12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Deliver Now',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "semibold")),
              Row(
                children: [
                  Text('15 mins - 31 Aug,2022',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontFamily: "medium")),
                  SizedBox(width: 5),
                  Icon(
                    Icons.chevron_right,
                    size: 18,
                  ),
                ],
              ),
            ],
          ),
          Divider(thickness: 1, color: Colors.black12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Deliver Options',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "semibold")),
              Row(
                children: [
                  Text('Leave at Front door',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontFamily: "medium")),
                  SizedBox(width: 5),
                  Icon(
                    Icons.chevron_right,
                    size: 18,
                  ),
                ],
              ),
            ],
          ),
          Divider(thickness: 1, color: Colors.black12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Instruction for Driver',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "semibold")),
              SizedBox(height: 5),
              CupertinoTextField(
                placeholder: "Note for Driver",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBoldFont(text, item) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      color: style.background,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$text',
            style: TextStyle(
                color: Colors.black54, fontSize: 14, fontFamily: 'medium'),
          ),
          Text(
            '$item',
            style: TextStyle(
                color: Colors.black54, fontSize: 14, fontFamily: 'medium'),
          ),
        ],
      ),
    );
  }

  Widget _buildItems() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Harirambapa',
              style: TextStyle(
                  color: Colors.black, fontSize: 16, fontFamily: "semibold")),
          Divider(thickness: 1, color: Colors.black12),
          _buildCartAll(),
          Divider(thickness: 1, color: Colors.black12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Note',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "semibold")),
              SizedBox(height: 5),
              CupertinoTextField(
                placeholder: "Add note for restaurant",
              ),
            ],
          ),
          Divider(thickness: 1, color: Colors.black12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tip for Driver',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "semibold")),
              Text('Rs10.00',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "semibold")),
            ],
          ),
          chipList(),
          // time.map((e) {
          //     return _buildChip(
          //       e.name,
          //     );
          //   }).toList(),
          Text(
              "The recommend tip is based on the delivery distance and effort. 100% of the tip goes to your driver.",
              style: TextStyle(color: Colors.black45, fontSize: 12)),
          Divider(thickness: 1, color: Colors.black12),
          _buildBill('Subtotal', 'Rs120.00'),
          _buildBill('Discount(10% off for orders over 100)', '-Rs120.00'),
          _buildBill('Tax and fees', 'Rs5.00'),
          _buildBill('Delivery fee', 'Rs4.00'),
          _buildBill('Tip for Driver', 'Rs10.00'),
        ],
      ),
    );
  }

  chipList() {
    return Wrap(
      spacing: 10.0,
      children: time.map((e) {
        return _buildChip(
          e.text,
        );
      }).toList(),
    );
  }

  Widget _buildChip(name) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: ChoiceChip(
        label: Text(name),
        labelPadding: const EdgeInsets.symmetric(horizontal: 15),
        selected: _value == name,
        selectedColor: style.appColor,
        onSelected: (bool value) {
          setState(() {
            _value = value ? name : null;
          });
        },
        backgroundColor: Colors.grey,
        labelStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildBill(text, item) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$text',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontFamily: 'medium'),
          ),
          Text(
            '$item',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontFamily: 'bold'),
          ),
        ],
      ),
    );
  }

  Widget _buildCartAll() {
    return Column(
      children: [
        _buildCartItem(),
        Divider(thickness: 1, color: Colors.black12),
        _buildCartItem(),
      ],
    );
  }

  Widget _buildCartItem() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/2.png",
          height: 25.0,
          width: 25.0,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text("2x"),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Vegiiy Pizza",
                style: TextStyle(
                    color: Colors.black, fontSize: 14, fontFamily: "semibold"),
              ),
              _buildCustomItem(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCustomItem() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Text("Medium size, pan crust, capsicum, onion, mashrom",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.black45, fontSize: 12)),
              ),
              Text("Edit",
                  style: TextStyle(
                      color: Colors.blue, fontSize: 12, fontFamily: "medium")),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Container(
                color: Colors.black54,
                child: const Text(" % ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: "semibold")),
              ),
              const SizedBox(width: 5),
              const Text("Note to Restauratn",
                  style: TextStyle(color: Colors.black45, fontSize: 10)),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text("Rs300",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'semibold',
                          fontSize: 14)),
                  SizedBox(width: 10),
                  Text("Rs450",
                      style: TextStyle(color: Colors.black45, fontSize: 12)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }

  Widget _bottomNav() {
    return Container(
      height: 120.0,
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total",
                style: TextStyle(color: Colors.black54, fontFamily: "medium"),
              ),
              Row(
                children: const [
                  Text("Rs320",
                      style: TextStyle(color: Colors.black45, fontSize: 14)),
                  SizedBox(width: 20),
                  Text("Rs200",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'semibold',
                          fontSize: 20)),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.credit_card,
                    size: 18,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Visa ***1220",
                    style:
                        TextStyle(color: Colors.black54, fontFamily: "medium"),
                  ),
                ],
              ),
              const Text(
                "Promotion",
                style: TextStyle(color: Colors.black54, fontFamily: "medium"),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              child: const Text("Place Order",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "medium",
                  )),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderStatus()));
              },
              style: ElevatedButton.styleFrom(
                primary: style.appColor,
                onPrimary: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  const Item(this.text);
  final String text;
}
