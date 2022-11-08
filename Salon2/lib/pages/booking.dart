/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon2/pages/pick-stylist.dart';
import 'package:salon2/pages/service-location.dart';
import '../components/styles.dart' as style;

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);
  static const String id = 'Booking';

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  int cartCount = 1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: const Text(
          'Booking Checklist',
          style: TextStyle(color: style.appColor, fontFamily: "semi-bold"),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            _buildStylist(context),
            _buildSlot(context),
            _buildServices(context)
          ],
        )),
      ),
      bottomNavigationBar: serviceDetail(),
    );
  }

  Widget _buildStylist(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1.0, color: Colors.black12)),
        child: InkWell(
          onTap: () {},
          child: Row(
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                radius: 25,
              ),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text('John Doe', style: TextStyle(fontFamily: "bold")),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text('Experience  ·  8 year',
                          style: TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
              )),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new PickStylist()));
                },
                child: const Text('Change',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "medium")),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSlot(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1.0, color: Colors.black12)),
        child: InkWell(
          onTap: () {},
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 14),
                decoration: BoxDecoration(
                    color: style.appColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text('Nov',
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                    Text('17',
                        style: TextStyle(
                            fontFamily: "bold",
                            color: Colors.white,
                            fontSize: 18)),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text('Friday', style: TextStyle(fontFamily: "bold")),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text('Morning  ·  10:00 AM',
                          style: TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
              )),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new PickStylist()));
                },
                child: const Text('Change',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "medium")),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServices(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Text('Services',
                style: TextStyle(fontFamily: "bold", fontSize: 18)),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1.0, color: Colors.black12)),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text('Regular Hair Cut',
                            style: TextStyle(fontFamily: "bold")),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text('250  +  Tax',
                              style: TextStyle(color: Colors.grey)),
                        ),
                      ],
                    ),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        color: style.appColor,
                        onPressed: () {},
                        icon: Icon(Icons.remove_circle),
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerLeft,
                        iconSize: 34.0,
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            color: style.appColor, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        color: style.appColor,
                        onPressed: () {},
                        icon: Icon(Icons.add_circle),
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerRight,
                        iconSize: 34.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget serviceDetail() {
    return Container(
      height: 180.0,
      margin: EdgeInsets.only(top: 25.0, bottom: 16.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Service Cost",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "\u20B9 33.0",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 13.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Tax",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "\u20B9 2.0",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 13.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Total Cost",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "\u20B9 35.0",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              child: const Text("Continue",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "medium",
                  )),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ServiceLocation()));
              },
              style: ElevatedButton.styleFrom(
                primary: style.appColor,
                onPrimary: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
