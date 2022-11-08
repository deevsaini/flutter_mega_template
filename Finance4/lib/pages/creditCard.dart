/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:banky/helper/style.dart' as style;
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class creditCard extends StatefulWidget {
  creditCard({Key? key}) : super(key: key);

  static const String page_id = "Credit Card";

  @override
  _creditCardState createState() => _creditCardState();
}

class _creditCardState extends State<creditCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Your Credit Card',
        style: style.darkText(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(
            Icons.autorenew_outlined,
            color: style.appColor,
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 160,
                    width: 280,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: style.appColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mandiri Platinum',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'medium'),
                            ),
                            Image.asset(
                              'assets/images/visa.png',
                              height: 40,
                              width: 40,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Balance',
                          style: TextStyle(color: Colors.white54),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ 6,800.86',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'medium'),
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 160,
                    width: 280,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mandiri Platinum',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontFamily: 'medium'),
                            ),
                            Image.asset(
                              'assets/images/visa.png',
                              height: 40,
                              width: 40,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Balance',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ 6,800.86',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 22,
                                  fontFamily: 'medium'),
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.grey,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Budgets',
                      style: style.darkText(),
                    ),
                    Text(
                      'for Mandiri Platinum Card',
                      style: TextStyle(color: style.appColor, fontSize: 12),
                    )
                  ],
                ),
                Text(
                  'Add Budget',
                  style: TextStyle(color: style.appColor, fontFamily: 'medium'),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            new CircularPercentIndicator(
              arcType: ArcType.HALF,
              radius: 160.0,
              animation: true,
              animationDuration: 1200,
              lineWidth: 8.0,
              percent: 0.8,
              center: Column(
                children: [
                  Icon(
                    Icons.wallet_giftcard,
                    color: style.appColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'You\'re Spent',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$2,860',
                    style: TextStyle(
                        color: style.appColor,
                        fontSize: 22,
                        fontFamily: 'medium'),
                  ),
                  Text(
                    'of \$3,480',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: Colors.grey,
              progressColor: style.appColor,
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  slideContainer(),
                  slideContainer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget slideContainer() {
    return Container(
      height: 250,
      width: 250,
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 20.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.all(15),
                child: Icon(
                  Icons.local_taxi_outlined,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Transportation',
            style: style.darkText(),
          ),
          SizedBox(
            height: 5,
          ),
          RichText(
            text: TextSpan(
              text: 'AVG spent ',
              style: TextStyle(
                  color: Colors.grey, fontSize: 14, fontFamily: 'regular'),
              children: <TextSpan>[
                TextSpan(
                  text: '\$24 a week',
                  style: TextStyle(fontFamily: 'medium', color: style.appColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          new LinearPercentIndicator(
            animation: true,
            lineHeight: 20.0,
            animationDuration: 2500,
            percent: 0.8,
            center: Text("80.0%"),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.yellow.shade600,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'You\'r transportation budget \n on a good condition',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
