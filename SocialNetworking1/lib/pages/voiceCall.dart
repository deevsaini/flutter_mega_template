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

class voiceCall extends StatefulWidget {
  voiceCall({Key? key}) : super(key: key);

  static const String page_id = "Voice Call";

  @override
  _voiceCallState createState() => _voiceCallState();
}

class _voiceCallState extends State<voiceCall> {
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
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  Text(
                    'Druide Wensleydate',
                    style: TextStyle(
                        fontFamily: 'medium',
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '01:11',
                    style: TextStyle(
                        fontFamily: 'medium',
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: lightButton(Icons.mic_off_outlined, 'Mute'),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: lightButton(Icons.pause, 'Hold'),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: lightButton(Icons.note_alt_outlined, 'Notes'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: lightButton(Icons.person_outline, 'Contacts'),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: lightButton(Icons.dialpad, 'Dial Pad'),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: lightButton(Icons.speaker_outlined, 'Speaker'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget lightButton(icon, text) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: appColor.withOpacity(0.1),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
