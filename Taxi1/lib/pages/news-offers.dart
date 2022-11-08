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

class NewsOffersPage extends StatefulWidget {
    NewsOffersPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'News Offers';

    @override
    State<NewsOffersPage> createState() => _NewsOffersPageState();
}

class _NewsOffersPageState extends State<NewsOffersPage> {

    String tabID = 'Completed';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                title: Text('News and Offers',
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
                            decoration: borderBox(),
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

                                ],
                            ),
                        )
                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    borderBox() {
        return BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: (Colors.grey[300])!,
                    width: 1
                )
            ),
            color: Colors.white
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
            padding: EdgeInsets.all(12),
            decoration: cardBox(),
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text('CABS',style: cabLabel()),
                            Column(
                                children: [
                                    RichText(
                                        text: TextSpan(
                                            text: 'LKR ',
                                            style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'regular'),
                                            children: <TextSpan>[
                                                TextSpan(text: '800.00', style: TextStyle(fontFamily: 'semi-bold')),
                                            ],
                                        ),
                                    ),
                                    Text('Cash back'.toUpperCase() ,style: greyLabel()),
                                ],
                            ),
                        ],
                    ),
                    SizedBox(height: 20),
                    Text('Get your cash back', style: boldLabel()),
                    Text('Get 25% CASH BACK on the first Rs. 400 of your trip value till the 31st October! T&C apply',
                        style: detailLabel(),
                    ),
                ],
            ),
        );
    }

    cardBox() {
        return BoxDecoration(
            color: style.appColor,
            borderRadius: BorderRadius.all(
                Radius.circular(8)
            ),
        );
    }

    cabLabel() {
        return TextStyle(
            fontFamily: 'semi-bold',
            fontSize: 30
        );
    }

    boldLabel() {
        return TextStyle(
            fontFamily: 'medium',
            fontSize: 16
        );
    }

    greyLabel() {
        return TextStyle(
            color: Colors.grey,
            fontSize: 13
        );
    }

    detailLabel() {
        return TextStyle(
            color: Colors.grey
        );
    }

}