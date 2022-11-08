/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon2/pages/booking.dart';
import 'package:salon2/pages/stylist-info.dart';
import '../components/styles.dart' as style;

class PickStylist extends StatefulWidget {
  const PickStylist({Key? key}) : super(key: key);
  static const String id = 'PickStylist';

  @override
  _PickStylistState createState() => _PickStylistState();
}

class _PickStylistState extends State<PickStylist> {
  String stylistRadio = '';
  @override
  void initState() {
    super.initState();
  }

  final List _elements = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11'
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
          'Pick your Stylist',
          style: TextStyle(color: style.appColor, fontFamily: "semi-bold"),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 30),
                child: Text("List of stylists available at your selected slot.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "semi-bold", fontSize: 18)),
              ),
              ListView(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                children: _elements.map((e) {
                  return _buildStylists(context, e);
                }).toList(),
              ),
            ],
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
            width: 2.0,
          ),
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const StylistInfo()));
        },
        child: Row(
          children: <Widget>[
            Radio(
                value: index.toString(),
                activeColor: style.appColor,
                groupValue: stylistRadio,
                onChanged: (value) {
                  setState(() {
                    stylistRadio = value.toString();
                  });
                }),
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
                  Text('John Doe', style: TextStyle(fontFamily: "semi-bold")),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('Experience  ·  8 year',
                        style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 18.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                      SizedBox(width: 6),
                      Text('4.2',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "bold",
                            fontSize: 14,
                          )),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text('10 reviews',
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: ElevatedButton(
        child: const Text("Proceed to Checkout",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "medium",
            )),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Booking()));
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
    );
  }
}
