/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/pages/restaurant_detail.dart';
import '../components/styles.dart' as style;

class ItemDetail extends StatefulWidget {
  static const String id = 'ItemDetail';

  const ItemDetail({Key? key}) : super(key: key);

  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  void initState() {
    super.initState();
  }

  String LocationRadio = '';
  List<radio> radioItem = <radio>[
    radio('small', 'Rs100'),
    radio('big', 'Rs200'),
    radio('large', 'Rs300'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/banner2.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          _buildContent(),
        ],
      ),
      bottomNavigationBar: _bottomNav(),
    );
  }

  Widget _buildContent() {
    return DraggableScrollableSheet(
      initialChildSize: .7,
      minChildSize: .7,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                _buildContainer(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildContainer() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text("Vegetable Pizza",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "semibold")),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Rs.320",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 14,
                              fontFamily: "semibold")),
                      SizedBox(width: 20),
                      Text("Rs.400",
                          style: TextStyle(color: Colors.black45, fontSize: 12))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.turned_in_rounded,
                        color: Colors.green,
                        size: 12,
                      ),
                      Text("250 cal",
                          style:
                              TextStyle(color: Colors.black45, fontSize: 12)),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                  "Vegetabel Pizza with prephel bread na papper weight mashroom, onion, capsicum",
                  style: TextStyle(color: Colors.black45, fontSize: 12)),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Note to Restaurant',
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
                  prefixIcon: Icon(Icons.telegram, color: Colors.black45),
                ),
              ),
              _buildBoldFont("Choice of Sizes", "(Required)"),
              Container(
                color: Colors.white,
                child: Column(
                  children: radioItem.map((e) {
                    return _buildRadioSeg(context, e, e);
                  }).toList(),
                ),
              ),
              _buildBoldFont("Choice of Crusts", "(Required)"),
              Container(
                color: Colors.white,
                child: Column(
                  children: radioItem.map((e) {
                    return _buildRadioSeg(context, e, e);
                  }).toList(),
                ),
              ),
              _buildBoldFont("Choice of Cheese", "(Required)"),
              Container(
                color: Colors.white,
                child: Column(
                  children: radioItem.map((e) {
                    return _buildRadioSeg(context, e, e);
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBoldFont(text, smallText) {
    return Container(
      padding: EdgeInsets.all(16),
      color: style.background,
      width: double.infinity,
      child: Row(
        children: [
          Text(
            '$text',
            style: TextStyle(
                color: Colors.black54, fontSize: 16, fontFamily: 'semibold'),
          ),
          SizedBox(width: 10),
          Text(
            '$smallText',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRadioSeg(context, e, index) {
    return Container(
      padding: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 1.0,
          ),
        ),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: <Widget>[
            Radio(
                value: index.toString(),
                activeColor: style.appColor,
                groupValue: LocationRadio,
                onChanged: (value) {
                  setState(() {
                    LocationRadio = value.toString();
                  });
                }),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(e.name,
                      style: TextStyle(
                          fontFamily: "semi-bold",
                          fontSize: 14,
                          color: Colors.black)),
                  Text(e.price,
                      style: TextStyle(
                          fontFamily: "medium",
                          fontSize: 12,
                          color: Colors.black45)),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget _bottomNav() {
    return Container(
      height: 100.0,
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Rs200",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'semibold',
                          fontSize: 20)),
                  SizedBox(width: 10),
                  Text("Rs320",
                      style: TextStyle(color: Colors.black45, fontSize: 14)),
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    color: Colors.grey,
                    onPressed: () {},
                    icon: Icon(Icons.remove_circle),
                    iconSize: 30.0,
                  ),
                  Text(
                    "1",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    color: style.appColor,
                    onPressed: () {},
                    icon: Icon(Icons.add_circle),
                    iconSize: 30.0,
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              child: const Text("Add to Cart",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "medium",
                  )),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RestaurantDetail()));
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

class radio {
  const radio(this.name, this.price);
  final String name;
  final String price;
}
