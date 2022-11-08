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

class History extends StatefulWidget {
  static const String id = 'History';

  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final List _elements = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];

  List<Item> catList = <Item>[
    Item(appColor, Icons.account_balance_wallet_outlined),
    Item(appColor2, Icons.credit_card),
    Item(appColor3, Icons.currency_bitcoin),
    Item(appColor4, Icons.phone_iphone_rounded),
    Item(appColor, Icons.account_balance_wallet_outlined),
    Item(appColor2, Icons.credit_card),
    Item(appColor3, Icons.currency_bitcoin),
    Item(appColor4, Icons.phone_iphone_rounded),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: Text("History",
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
              color: backgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  boldHeading('Choose Category'),
                  _buildCatSlider(),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        greyText('Friday, 31 January 2022'),
                        Icon(
                          Icons.calendar_month_rounded,
                          color: Colors.black45,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: _elements.map((e) {
                      return _buildTransaction(context, e);
                    }).toList(),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildCatSlider() {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.black12)),
      ),
      child: ListView(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: catList.map((e) {
          return InkWell(
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: e.color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      e.icn,
                      size: 32,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildTransaction(context, e) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 30,
              height: 30,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.black26)),
              child: Image.asset(
                'assets/images/credit-card.png',
                width: 20,
                height: 20,
                fit: BoxFit.fill,
              )),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("+\$320.31",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "medium",
                        color: Colors.black87)),
                Text("Levi's T-shirt",
                    style: TextStyle(fontSize: 14, color: Colors.black45)),
              ],
            ),
          ),
          Text("04.00pm",
              style: TextStyle(fontSize: 16, color: Colors.black45)),
        ],
      ),
    );
  }
}

class Item {
  const Item(this.color, this.icn);
  final color;
  final icn;
}
