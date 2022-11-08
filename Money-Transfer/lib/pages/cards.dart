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

class CardsPage extends StatefulWidget {
    CardsPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Cards';

    @override
    State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {

    String segmentID = 'Physical Card';
    bool isContactLess = true;
    bool isOnlinePayment = false;
    bool isATMWithdraws = false;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBack,
            appBar: AppBar(
                backgroundColor: style.appBack,
                automaticallyImplyLeading: false,
                elevation: 0,
            ),
            body: _buildBody(),
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                    Text('Your Cards', style: style.pageTitle()),
                    Text('2 physical, 1 virtual debit card', style: style.subTitle()),
                    SizedBox(height: 20),

                    Container(
                        height: 250,
                        margin: EdgeInsets.only(bottom: 24),
                        width: double.infinity,
                        child: ListView(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: List.generate([1,2].length, (index) {
                                return _buildCard();
                            }),
                        ),
                    ),

                    _buildSegment(),
                    SizedBox(height: 20),
                    Text('Card Settings', style: style.simpleText()),
                    SizedBox(height: 20),

                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        margin: EdgeInsets.only(bottom: 16),
                        decoration: style.whiteContainer(),
                        child: Row(
                            children: [
                              _buildSwitchDetail(Icons.contactless, 'Contactless Payment'),
                              Switch(
                                  value: this.isContactLess,
                                  activeColor: Colors.green[600],
                                  onChanged: (bool? value) {
                                      setState(() {
                                          this.isContactLess = !this.isContactLess;
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
                          _buildSwitchDetail(Icons.payment, 'Online Payment'),
                          Switch(
                              value: this.isOnlinePayment,
                              activeColor: Colors.green[600],
                              onChanged: (bool? value) {
                                setState(() {
                                  this.isOnlinePayment = !this.isOnlinePayment;
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
                    _buildSwitchDetail(Icons.atm, 'ATM Withdraws'),
                    Switch(
                        value: this.isATMWithdraws,
                        activeColor: Colors.green[600],
                        onChanged: (bool? value) {
                          setState(() {
                            this.isATMWithdraws = !this.isATMWithdraws;
                          });
                        }
                    )
                  ],
                ),
              ),

                ],
            ),
        );
    }

    Widget _buildCard() {
        return Container(
            width: 340,
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.all(16),
            decoration: style.cardDecoration(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text('MasterCard'.toUpperCase(),
                      style: style.boldLabel(),
                    ),
                    SizedBox(height: 16),
                    Image.asset('assets/images/chip.png', width: 60),
                    SizedBox(height: 10),
                    Text('4242 4242 4242 4242',
                      style: style.boldLabel(),
                    ),
                    SizedBox(height: 24),
                    Row(
                        children: [
                            Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Cardholder Name',
                                        style: style.smallLabel()
                                    ),
                                    Text('Michel James'.toUpperCase(),
                                      style: style.boldLabel(),
                                    ),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Valid till',
                                      style: style.smallLabel(),
                                    ),
                                    Text('24-25'.toUpperCase(),
                                      style: style.boldLabel(),
                                    ),
                                  ],
                                )
                            ),
                            SizedBox(width: 16),
                            Image.asset('assets/images/mastercard.png', width: 60)
                        ],
                    )
                ],
            ),
        );
    }

    Widget _buildSegment() {
        return Row(
            children: [
                InkWell(
                    onTap: () {
                        setState(() {
                            segmentID = 'Physical Card';
                        });
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        margin: EdgeInsets.only(right: 16),
                        decoration: segmentDecoration('Physical Card'),
                        child: Text('Physical Card',
                            style: segmentText('Physical Card'),
                        ),
                    )
                ),
                InkWell(
                    onTap: () {
                        setState(() {
                            segmentID = 'Virtual Card';
                        });
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        margin: EdgeInsets.only(right: 16),
                        decoration: segmentDecoration('Virtual Card'),
                        child: Text('Virtual Card',
                            style: segmentText('Virtual Card'),
                        ),
                    )
                )
            ],
        );
    }

    segmentDecoration(val) {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(16)
            ),
            color: val == segmentID ? style.appColor : style.appBlue
        );
    }
    
    segmentText(val) {
        return TextStyle(
            fontFamily: 'medium',
            color: val == segmentID ? Colors.white : Colors.blue
        );
    }

    Widget _buildSwitchDetail(icn, title) {
        return Expanded(
            child: Row(
                children: [
                    Icon(icn, color: style.appColor),
                    SizedBox(width: 8),
                    Expanded(
                        child: Text('$title',
                            style: TextStyle(fontSize: 16),
                        )
                    )
                ],
            )
        );
    }
}
