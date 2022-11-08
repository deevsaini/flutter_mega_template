/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:banky/pages/success.dart';
import 'package:flutter/material.dart';
import 'package:banky/helper/style.dart' as style;

class review extends StatefulWidget {
  review({Key? key}) : super(key: key);

  static const String page_id = "Review";

  @override
  State<review> createState() => _reviewState();
}

class _reviewState extends State<review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: style.appColor),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => success()));
            },
            child: Text(
              'Do you need some help ?',
              style: TextStyle(color: Colors.white54),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: style.appColor,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        'Review',
        style:
            TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'medium'),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: style.appColor),
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 80),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Amount',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$2,600',
                  style: TextStyle(fontFamily: 'medium', fontSize: 32),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'To',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(22),
                        child: FittedBox(
                          child: Image(
                            image: AssetImage('assets/images/profile.jpg'),
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Hardik Gohil',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'From',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
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
                      Text(
                        '\$ 6,800.86',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'medium'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: Text('Send Now'),
                //   style: ElevatedButton.styleFrom(
                //     primary: style.appColor,
                //     onPrimary: Colors.white,
                //     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10.0),
                //     ),
                //   ),
                // ),
                Container(
                  width: 280,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 50),
                  decoration: BoxDecoration(color: style.appColor),
                  child: Text(
                    'Send now',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'medium',
                        color: Colors.white,
                        fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
