/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxi/pages/payment.dart';
import '../components/styles.dart';

class RideDetails extends StatefulWidget {
  static const String id = 'RideDetails';

  const RideDetails({Key? key}) : super(key: key);

  @override
  _RideDetailsState createState() => _RideDetailsState();
}

class _RideDetailsState extends State<RideDetails> {
  List<Item> time = <Item>[
    const Item('5\$'),
    const Item('10\$'),
    const Item('20\$'),
    const Item('custom'),
  ];

  var _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black87),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ride Summary',
              style: TextStyle(
                  color: Colors.black, fontFamily: "semibold", fontSize: 16),
            ),
            Text(
              '#201298',
              style: TextStyle(
                  color: appColor, fontFamily: "semibold", fontSize: 14),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildbtn(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
        child: Column(
      children: [
        _buildBill(),
        _buildDivider(),
        _buildLocation(),
        _buildDivider(),
        _buildRideDetail(),
        _buildDivider(),
        _buildDriver(),
      ],
    ));
  }

  Widget _buildBill() {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Fare",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'semibold',
                        color: Colors.black54)),
                Text("\$45.00",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'semibold',
                        color: Colors.black)),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payable Total",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'bold',
                        color: Colors.black54)),
                Text("\$45.00",
                    style: TextStyle(
                        fontSize: 16, fontFamily: 'bold', color: Colors.black)),
              ],
            ),
          ],
        ));
  }

  Widget _buildLocation() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          _buildAddress(
              "Home", "White House, Powder Galli, UK 1220", "09:00 AM"),
          SizedBox(height: 30),
          _buildAddress(
              "Office", "White House, Powder Galli, Texas 2012", "09:20 AM"),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildAddress(lcn, adds, time) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.circle,
          size: 18,
          color: appColor,
        ),
        SizedBox(width: 16),
        Expanded(
          child: Container(
            // width: ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(lcn,
                    style: TextStyle(
                        color: Colors.black, fontSize: 16, fontFamily: "bold")),
                SizedBox(height: 5),
                Text(adds,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontFamily: "medium"))
              ],
            ),
          ),
        ),
        Text(time,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontFamily: "medium")),
      ],
    );
  }

  Widget _buildRideDetail() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              Text("Destination",
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontFamily: "medium")),
              Text("3 Km",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "semibold")),
            ],
          ),
          Column(
            children: const [
              Text("Wait Time",
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontFamily: "medium")),
              Text("3 min",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "semibold")),
            ],
          ),
          Column(
            children: const [
              Text("Total",
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontFamily: "medium")),
              Text("\$45",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "semibold")),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDriver() {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("John Snowborn",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "bold",
                          color: Colors.black)),
                  SizedBox(height: 5),
                  Text("City Honda",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "semibold",
                          color: Colors.black54)),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.star, color: appColor, size: 14),
                      SizedBox(width: 5),
                      Text("5",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "bold",
                              color: appColor)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: ElevatedButton(
                  child: Text("Detail",
                      style: TextStyle(fontSize: 14, fontFamily: 'semibold')),
                  onPressed: () {
                    _settingModalBottomSheet(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: appColor,
                    onPrimary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                  )),
            ),
          ],
        ));
  }

  Widget _buildbtn() {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: ElevatedButton(
        child: btnText("Continue To Pay"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Payment()));
        },
        style: btnStyle(),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      thickness: 16,
      color: backgroundColor,
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: 360,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                  SizedBox(height: 5),
                  Text("John Doe",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "bold")),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildIcon(),
                      _buildIcon(),
                      _buildIcon(),
                      _buildIcon(),
                      _buildIcon(),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Add Tips",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontFamily: "medium")),
                        SizedBox(height: 10),
                        Wrap(
                          spacing: 10.0,
                          children: time.map((e) {
                            return _buildChip(
                              e.text,
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                  _buildbtn(),
                ],
              ),
            ),
          );
        });
  }

  Widget _buildChip(name) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: ChoiceChip(
        label: Text(name),
        labelPadding: const EdgeInsets.symmetric(horizontal: 8),
        selected: _value == name,
        selectedColor: appColor,
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

  Widget _buildIcon() {
    return Icon(Icons.star, color: appColor, size: 14);
  }
}

class Item {
  const Item(this.text);
  final String text;
}
