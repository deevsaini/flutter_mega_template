/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:socialnetworking/helper/style.dart';

class videoCall extends StatefulWidget {
  videoCall({Key? key}) : super(key: key);

  static const String page_id = "Video Call";

  @override
  _videoCallState createState() => _videoCallState();
}

class _videoCallState extends State<videoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/s3.jpg'), fit: BoxFit.cover),
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text(
                        'Fleece Marigold',
                        style: TextStyle(
                            fontFamily: 'medium',
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text(
                        '2:30',
                        style: TextStyle(
                            fontFamily: 'medium',
                            fontSize: 16,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80, right: 10),
                  height: 130,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage('assets/images/s2.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.red,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.call,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      button(Icons.videocam),
                      button(Icons.mic),
                      button(Icons.repeat),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget button(icon) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.shade300,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
