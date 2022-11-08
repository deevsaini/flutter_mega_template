/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:finance1/pages/cards.dart';
import 'package:finance1/pages/transfer_from_card.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.only(left: 16),
          child: CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage('assets/images/man.png'),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          children: [
            Text("Jonathan Swift",
                style: TextStyle(
                  fontFamily: 'medium',
                  fontSize: 14,
                  color: Colors.black,
                )),
            Text("@jonathon3423",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 14,
                )),
          ],
        ),
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
          SizedBox(height: 30),
          Center(
            child: _buildHead(),
          ),
          _buildbtns(),
          _buildBottom(),
        ],
      ),
    );
  }

  Widget _buildHead() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              greyText("My Balance:"),
              SizedBox(height: 8),
              Text("\$4,520.12",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'medium',
                    fontSize: 24,
                  )),
            ],
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                greyText("Today Spent:"),
                SizedBox(width: 5),
                blackText("\$28.12"),
              ],
            ),
            SizedBox(height: 14),
            Row(
              children: [
                greyText("Daily Limit:"),
                SizedBox(width: 5),
                blackText("\$400"),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildbtns() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Cards()));
            },
            child: squreBtn(Icons.payment, appColor2, 'Payments'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TransferFromCard()));
            },
            child:
                squreBtn(Icons.change_circle_outlined, appColor3, 'Transfer'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Cards()));
            },
            child: squreBtn(Icons.phone_android_sharp, appColor, 'Replenish'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Cards()));
            },
            child: squreBtn(
                Icons.account_balance_wallet_outlined, appColor4, 'Cards'),
          )
        ],
      ),
    );
  }

  squreBtn(icn, color, txt) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icn,
            size: 32,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 6),
        cardText(txt),
      ],
    );
  }

  Widget _buildBottom() {
    return Container(
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            _buildMainCard(),
            boldHeading('Exchange Rates'),
            _buildTable()
          ],
        ));
  }

  Widget _buildMainCard() {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: appColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          new CircularPercentIndicator(
            radius: 34.0,
            lineWidth: 3.0,
            percent: 0.7,
            animation: true,
            animationDuration: 1200,
            center: new Text(
              "76%",
              style: TextStyle(color: Colors.white),
            ),
            progressColor: Colors.white,
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.white24,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Daily limit",
                    style: TextStyle(fontSize: 14, color: Colors.white)),
                SizedBox(height: 6),
                Text("\$221.12 of \$400.00",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'medium',
                        color: Colors.white)),
              ],
            ),
          ),
          Icon(
            Icons.chevron_right,
            size: 28,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _buildTable() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            greyText('Currency'),
            greyText('Buy'),
            greyText('Sell'),
          ],
        ),
        Column(
          children: _elements.map((e) {
            return _buildAssets(context, e);
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildAssets(context, e) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: appColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Icon(
                        Icons.currency_bitcoin,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8),
                    blackText('EUR'.toUpperCase()),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_up,
                        color: appColor,
                      ),
                      cardText('0.90'),
                    ],
                  ),
                  greyText('+ 0.10'),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.red,
                      ),
                      cardText('1.90'),
                    ],
                  ),
                  greyText('- 0.10'),
                ],
              ),
            ],
          ),
        ),
        Divider(thickness: .5, color: Colors.black26)
      ],
    );
  }
}
