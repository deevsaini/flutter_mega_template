/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class callScreen extends StatefulWidget {
  callScreen({Key? key}) : super(key: key);

  static const String page_id = "Call Screen";

  @override
  _callScreenState createState() => _callScreenState();
}

class _callScreenState extends State<callScreen> {
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
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      title: Text(
        'Calling...',
        style: headText(),
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RippleAnimation(
              repeat: true,
              color: Colors.lightBlueAccent,
              minRadius: 90,
              ripplesCount: 4,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/g1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Text(
              'Kathryn Murphy',
              style: headText(),
            ),
            Text(
              'Bella Rinova',
              style: TextStyle(color: appColor, fontFamily: 'semi-bold'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '+153 64 877 879 9',
              style: TextStyle(
                  color: Colors.grey, fontFamily: 'semi-bold', fontSize: 16),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                bottomButton(Icons.keyboard_voice_outlined, Colors.black),
                bottomButton(Icons.campaign_outlined, Colors.black),
                bottomButton(Icons.call_end, Colors.red),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget bottomButton(icn, color) {
    return Container(
      padding: EdgeInsets.all(10),
      // margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: InkWell(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Icon(
            icn,
            size: 30,
            color: color,
          ),
        ),
      ),
    );
  }
}
