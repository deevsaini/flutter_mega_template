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

class MyTripsPage extends StatefulWidget {
    MyTripsPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'My Trips';

    @override
    State<MyTripsPage> createState() => _MyTripsPageState();
}

class _MyTripsPageState extends State<MyTripsPage> {

    String tabID = 'Completed';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                title: Text('My Trips',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'medium',
                        color: Colors.black
                    ),
                ),
                centerTitle: true,
            ),
            body: SingleChildScrollView(
                child: Column(
                    children: [
                        Container(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: (Colors.grey[300])!,
                                          width: 1
                                      )
                                  ),
                                  color: Colors.white
                              ),
                              child: Row(
                                  children: [
                                      Expanded(
                                          child: _buildSegmentText('Completed')
                                      ),
                                      Expanded(
                                          child: _buildSegmentText('Upcoming')
                                      ),
                                      Expanded(
                                          child: _buildSegmentText('Cancelled')
                                      ),
                                  ],
                              ),
                        ),
                        Container(
                        width: double.infinity,
                        color: Colors.white,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            _buildTitleLabel('Mon 8 oct 2018'),

                            ListView(
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              children: [1,2].map((e) {
                                return _buildCardBox();
                              }).toList(),
                            ),

                            _buildTitleLabel('Sun 7 oct 2018'),

                            ListView(
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              children: [1,2].map((e) {
                                return _buildCardBox();
                              }).toList(),
                            ),

                          ],
                        ),
                      )
                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildSegmentText(val) {
        return InkWell(
            onTap: () {
                setState(() {
                    tabID = val;
                });
            },
            child: Text('$val',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'medium',
                    color: tabID == val ? Colors.black : Colors.grey,
                    fontSize: 16
                ),
            )
        );
    }

    Widget _buildTitleLabel(val) {
        return Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text('$val'.toUpperCase(),
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: 'medium'
                ),
            ),
        );
    }

    Widget _buildCardBox() {
        return Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(
                                Radius.circular(8)
                            )
                        ),
                    ),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: shadowBox(),
                            child: Column(
                                children: [
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            Text('Mausam Chavda',style: nameLabel()),
                                            RichText(
                                                text: TextSpan(
                                                    text: 'LKR ',
                                                    style: TextStyle(fontSize: 15,color: Colors.black,fontFamily: 'regular'),
                                                    children: <TextSpan>[
                                                        TextSpan(text: '800.00', style: TextStyle(fontFamily: 'medium', color: Colors.black)),
                                                    ],
                                                ),
                                            ),
                                        ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Padding(
                                                padding: EdgeInsets.only(top: 3),
                                                child: Icon(Icons.fiber_manual_record, size: 16),
                                            ),
                                            SizedBox(width: 12),
                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                        Text('R.A De Mel Mawatha', style: boldLabel()),
                                                        Text('07:30 PM', style: greyLabel())
                                                    ],
                                                )
                                            )
                                        ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Padding(
                                                padding: EdgeInsets.only(top: 3),
                                                child: Icon(Icons.fiber_manual_record, size: 16),
                                            ),
                                            SizedBox(width: 12),
                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                        Text('Piliyandala Road', style: boldLabel()),
                                                        Text('08:30 PM', style: greyLabel())
                                                    ],
                                                )
                                            )
                                        ],
                                    ),
                                ],
                            ),
                        )
                    )
                ],
            ),
        );
    }

    shadowBox() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(8)
            ),
            color: Colors.white,
            boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 0.25)
                )
            ]
        );
    }

    nameLabel() {
        return TextStyle(
            fontFamily: 'medium',
            fontSize: 15
        );
    }

    boldLabel() {
        return TextStyle(
            fontFamily: 'medium'
        );
    }

    greyLabel() {
        return TextStyle(
            color: Colors.grey
        );
    }

}