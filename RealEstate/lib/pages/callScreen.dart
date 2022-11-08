/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:realestate/helper/style.dart';

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
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage('assets/images/profile.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Jaydeep Hirani',
                    style: TextStyle(
                        fontFamily: 'semi-bold', fontSize: 18, color: appColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Duration 01:30',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: appColor,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.volume_up,
                                  color: Colors.amber,
                                  size: 30,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Speaker')
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: lightButton(Icons.pause, 'Hold'),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: lightButton(Icons.videocam, 'Video Call'),
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
                        child: lightButton(Icons.pause, 'Mute'),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: lightButton(Icons.dialpad, 'Keyboard'),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: lightButton(Icons.person_add, 'Add Person'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.red,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.call_end,
                          color: Colors.white,
                        )),
                  )
                ],
              )
            ],
          ),
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
                color: appColor,
                size: 30,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}
