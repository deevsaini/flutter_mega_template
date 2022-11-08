/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class AccountAnalyticsPage extends StatefulWidget {
    AccountAnalyticsPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Account Analytics';

    @override
    State<AccountAnalyticsPage> createState() => _AccountAnalyticsPageState();
}

class _AccountAnalyticsPageState extends State<AccountAnalyticsPage> {

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                        Text('Account Analytics', style: style.pageTitle()),

                        SizedBox(height: 20),
                        _buildTitleRow('Transaction History', 'View More'),

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: boxContainer(),
                            child: Row(
                                children: [
                                    _buildSwitchDetail('assets/images/uber.png', 'Subways Dining'),
                                    SizedBox(width: 16),
                                    Text('-\$250.25',
                                      style: TextStyle(
                                          fontFamily: 'medium',
                                          fontSize: 12
                                      ),
                                    )
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: boxContainer(),
                            child: Row(
                                children: [
                                    _buildSwitchDetail('assets/images/subway.jpg', 'Account Name'),
                                    Text('-\$250.25',
                                        style: TextStyle(
                                            fontFamily: 'medium',
                                            fontSize: 12
                                        ),
                                    ),
                                ],
                            ),
                        ),

                        SizedBox(height: 24),
                        Row(
                            children: [
                                Expanded(
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Confirm'),
                                        style: style.simpleButton(),
                                    )
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Take me back'),
                                        style: style.whiteButton(),
                                    )
                                ),
                            ],
                        ),

                    ],
                ),
            ),
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
                            color: style.appColor,
                            fontSize: 13
                        ),
                    ),
                ],
            ),
        );
    }

    boxContainer() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(16)
            ),
            color: Colors.white
        );
    }

    Widget _buildSwitchDetail(img, title) {
        return Expanded(
            child: Row(
                children: [
                    Image.asset(img, width: 60),
                    SizedBox(width: 8),
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text('$title',
                                    style: TextStyle(fontSize: 16, fontFamily: 'medium', color: style.appColor),
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Text('24-02-2020',
                                            style: TextStyle(color: Colors.grey, fontSize: 12),
                                        ),
                                        Text('10:45pm',
                                            style: TextStyle(color: Colors.grey, fontSize: 12),
                                        ),
                                    ],
                                ),
                            ],
                        )
                    )
                ],
            )
        );
    }

}

class Item {
    Item(this.icn, this.text);
    final IconData icn;
    final String text;
}