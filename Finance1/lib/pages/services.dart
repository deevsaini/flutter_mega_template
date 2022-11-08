/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Services extends StatefulWidget {
  static const String id = 'Services';

  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<Item> Item2 = [
    Item(appColor, Icons.account_balance_wallet_outlined, 'Shopping'),
    Item(appColor2, Icons.credit_card, 'Food'),
  ];
  List<Item> Items = [
    Item(appColor, Icons.account_balance_wallet_outlined, 'Cash'),
    Item(appColor2, Icons.credit_card, 'Archive'),
    Item(appColor3, Icons.phone_android, 'Deposits'),
    Item(appColor, Icons.transform_rounded, 'Tickets'),
    Item(appColor2, Icons.wallet_membership, 'Games'),
    Item(appColor3, Icons.wallet_giftcard_sharp, 'Map'),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Services",
            style: TextStyle(
              fontFamily: 'medium',
              color: Colors.black,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
            ),
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(16),
              color: backgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  boldHeading('Choose Category'),
                  GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    shrinkWrap: true,
                    children: Item2.map((e) {
                      return _buildCard2(context, e);
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    shrinkWrap: true,
                    children: Items.map((e) {
                      return _buildCards(context, e);
                    }).toList(),
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildCard2(context, e) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new CircularPercentIndicator(
                radius: 25.0,
                lineWidth: 2.0,
                percent: 0.7,
                animation: true,
                animationDuration: 1200,
                center: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: e.color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    e.icn,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
                progressColor: e.color,
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 6),
              blackText(e.txt),
              SizedBox(height: 8),
              greyText("Spent last month"),
              SizedBox(height: 5),
              blackText('205.00'),
            ]));
  }

  Widget _buildCards(context, e) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new CircularPercentIndicator(
                radius: 25.0,
                lineWidth: 2.0,
                percent: 0.7,
                animation: true,
                animationDuration: 1200,
                center: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: e.color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    e.icn,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
                progressColor: e.color,
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 10),
              blackText(e.txt),
            ]));
  }
}

class Item {
  const Item(this.color, this.icn, this.txt);
  final color;
  final icn;
  final txt;
}
