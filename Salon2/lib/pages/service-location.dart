/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon2/pages/payment.dart';
import '../components/styles.dart' as style;

class ServiceLocation extends StatefulWidget {
  const ServiceLocation({Key? key}) : super(key: key);
  static const String id = 'ServiceLocation';

  @override
  _ServiceLocationState createState() => _ServiceLocationState();
}

class _ServiceLocationState extends State<ServiceLocation> {
  String LocationRadio = '';
  @override
  void initState() {
    super.initState();
  }

  final List _elements = [
    '1',
    '2',
    '3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: const Text(
          'Service Location',
          style: TextStyle(color: style.appColor, fontFamily: "semi-bold"),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: ListView(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            children: _elements.map((e) {
              return _buildStylists(context, e);
            }).toList(),
          ),
        ),
      ),
      bottomNavigationBar: _buildFooter(),
    );
  }

  Widget _buildStylists(context, index) {
    return Container(
      padding: const EdgeInsets.all(20),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text('John Doe', style: TextStyle(fontFamily: "semi-bold")),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 40),
                    child: Text(
                        '6 South Yukon Ave New Brunswick, White House, NJ202020 ',
                        style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      height: 130,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              child: const Text("Add New Address",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "medium",
                  )),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Payment()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onPrimary: Colors.black,
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(width: 1, color: Colors.black26)),
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              child: const Text("Continue to Payment",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "medium",
                  )),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Payment()));
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
