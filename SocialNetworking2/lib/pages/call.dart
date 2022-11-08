/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class CallScreen extends StatefulWidget {
  static const String id = 'CallScreen';

  const CallScreen({Key? key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/38.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('AB Powel',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'bold',
                              fontSize: 16)),
                      SizedBox(height: 6),
                      Text('01:12',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.add, color: Colors.white),
                      SizedBox(height: 6),
                      Text('01:12',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.black38,
                    child: Icon(
                      Icons.mic_none,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: appColorBtn,
                    child: Icon(
                      Icons.phone_disabled,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.black38,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
