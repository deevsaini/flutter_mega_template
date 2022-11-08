/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moneytransaction/pages/success.dart';
import '../helper/style.dart' as style;

class ChooseAccountPage extends StatefulWidget {
    ChooseAccountPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Choose Account';

    @override
    State<ChooseAccountPage> createState() => _ChooseAccountPageState();
}

class _ChooseAccountPageState extends State<ChooseAccountPage> {

    bool visaCard = true;
    bool goldCard = false;
    bool account = false;

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

                        Text('Choose Account', style: style.pageTitle()),
                        Text('Please select account from which you want to transfer money.',
                            style: style.subTitle(),
                        ),
                        SizedBox(height: 20),
                        Text('From Card', style: style.simpleText()),

                        SizedBox(height: 20),

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: style.whiteContainer(),
                            child: Row(
                                children: [
                                    _buildSwitchDetail('assets/images/visa.png', 'Visa MasterCard', '**** **** **** 4242'),
                                    Switch(
                                        value: this.visaCard,
                                        activeColor: Colors.green[600],
                                        onChanged: (bool? value) {
                                            setState(() {
                                                this.visaCard = !this.visaCard;
                                            });
                                        }
                                    )
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: style.whiteContainer(),
                            child: Row(
                                children: [
                                    _buildSwitchDetail('assets/images/mastercard.png', 'MasterCard Gold', '**** **** **** 4242'),
                                    Switch(
                                        value: this.goldCard,
                                        activeColor: Colors.green[600],
                                        onChanged: (bool? value) {
                                            setState(() {
                                                this.goldCard = !this.goldCard;
                                            });
                                        }
                                    )
                                ],
                            ),
                        ),

                        Text('From Bank or ATM', style: style.simpleText()),
                        SizedBox(height: 20),

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: style.whiteContainer(),
                            child: Row(
                                children: [
                                    _buildSwitchDetail('assets/images/home.png', 'Account Name', '**** **** **** 4242'),
                                    Switch(
                                        value: this.account,
                                        activeColor: Colors.green[600],
                                        onChanged: (bool? value) {
                                            setState(() {
                                                this.account = !this.account;
                                            });
                                        }
                                    )
                                ],
                            ),
                        ),

                        SizedBox(height: 24),
                        Row(
                            children: [
                                Expanded(
                                    child: ElevatedButton(
                                        onPressed: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new SuccessPage())
                                            );
                                        },
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

    Widget _buildSwitchDetail(img, title, text) {
        return Expanded(
            child: Row(
                children: [
                    Image.asset(img, width: 60),
                    SizedBox(width: 12),
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text('$title',
                                    style: TextStyle(fontSize: 16, fontFamily: 'medium'),
                                ),
                                Text('$text',
                                  style: TextStyle(color: Colors.grey),
                                ),
                            ],
                        )
                    )
                ],
            )
        );
    }

}