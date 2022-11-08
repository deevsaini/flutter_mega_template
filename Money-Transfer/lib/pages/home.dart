/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:moneytransaction/pages/account-analytics.dart';
import 'package:moneytransaction/pages/budget.dart';
import 'package:moneytransaction/pages/cards.dart';
import 'package:moneytransaction/pages/send-money.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../helper/style.dart' as style;

class HomePage extends StatefulWidget {
    HomePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Home';

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    List<Item> operations = <Item>[
        Item(Icons.sync_alt, 'Transfer'),
        Item(Icons.money, 'Withdraw'),
        Item(Icons.credit_card_outlined, 'Deposit'),
        Item(Icons.payment, 'My Cards'),
        Item(Icons.bar_chart, 'Analytics'),
        Item(Icons.trending_up, 'Budget'),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBack,
            appBar: AppBar(
                backgroundColor: style.appBack,
                automaticallyImplyLeading: false,
                elevation: 0,
            ),
            body: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                    children: <Widget>[
                        _buildUserInfo(),
                        _buildTitleRow('Overview', 'View Insight'),
                        _buildOverview(),
                        _buildTitleRow('Operations', ''),
                        GridView.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: operations.map((e) {
                                return _buildSingleOperation(e);
                            }).toList(),
                        ),
                        _buildTitleRow('Complete Profile', ''),
                        Container(
                            padding: EdgeInsets.all(16),
                            decoration: whiteBox(),
                            child: Column(
                                children: [
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            Text('60% Completed',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'medium'
                                                ),
                                            ),
                                            Text('7 out of 10 completed',
                                                style: TextStyle(color: Colors.grey),
                                            )
                                        ],
                                    ),
                                    SizedBox(height: 16),
                                    Container(
                                        child: Stack(
                                            children: [
                                                Container(
                                                    width: double.infinity,
                                                    height: 4,
                                                    color: style.appBlue,
                                                ),
                                                Container(
                                                  width: 200,
                                                  height: 4,
                                                  color: style.appColor
                                                )
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildUserInfo() {
        return Row(
            children: [
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text('Hello',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'medium',
                                    fontSize: 16
                                ),
                            ),
                            Text('Samuel Flatcher',
                                style: TextStyle(
                                    fontFamily: 'semi-bold',
                                    fontSize: 28
                                ),
                            ),
                        ],
                    )
                ),
                Container(
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(8)
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/images/user.jpg'),
                            fit: BoxFit.cover
                        )
                    ),
                ),
            ],
        );
    }

    Widget _buildTitleRow(val1, val2) {
        return Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text('$val1',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'medium'
                        ),
                    ),
                    Text('$val2',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13
                        ),
                    ),
                ],
            ),
        );
    }

    Widget _buildOverview() {
        return Row(
            children: [
                Expanded(
                    child: Container(
                        height: 90,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)
                            ),
                            color: style.appColor
                        ),
                        child: Row(
                            children: [
                                CircularPercentIndicator(
                                    radius: 33.0,
                                    lineWidth: 3.0,
                                    percent: 0.7,
                                    center: new Text('50%',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                    progressColor: style.appBlue,
                                ),
                                Expanded(
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Text('Budget',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'medium'
                                                ),
                                            ),
                                            Text('\$17,000',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                            )
                                        ],
                                    )
                                )
                            ],
                        ),
                    )
                ),
                SizedBox(width: 16),
                Expanded(
                    child: Container(
                        height: 90,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: whiteBox(),
                        child: Row(
                            children: [
                                CircularPercentIndicator(
                                    radius: 32.0,
                                    lineWidth: 3.0,
                                    percent: 0.7,
                                    center: new Text('50%',
                                        style: TextStyle(
                                            color: style.appColor,
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                    progressColor: style.appColor,
                                ),
                                Expanded(
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Text('Expenses',
                                                style: TextStyle(
                                                    color: style.appColor,
                                                    fontFamily: 'medium'
                                                ),
                                            ),
                                            Text('\$25,000',
                                                style: TextStyle(
                                                  color: style.appColor,
                                                ),
                                            )
                                        ],
                                    )
                                )
                            ],
                        ),
                    )
                ),
            ],
        );
    }

    whiteBox() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(10)
            ),
            color: Colors.white
        );
    }

    Widget _buildSingleOperation(val) {
        return InkWell(
            onTap: () {
                if(val.text == 'Transfer') {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new SendMoneyPage())
                    );
                }
                if(val.text == 'My Cards') {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new CardsPage())
                    );
                }
                if(val.text == 'Analytics') {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new AccountAnalyticsPage())
                    );
                }
                if(val.text == 'Budget') {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new BudgetPage())
                    );
                }
            },
            child: Container(
                decoration: whiteBox(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Icon(val.icn, color: style.appColor, size: 30),
                        Padding(
                            padding: EdgeInsets.only(top: 4, bottom: 8),
                            child: Text(val.text),
                        ),
                    ],
                ),
            ),
        );
    }


}

class Item {
    Item(this.icn, this.text);
    final IconData icn;
    final String text;
}