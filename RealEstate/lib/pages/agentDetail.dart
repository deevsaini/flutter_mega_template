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
import 'package:realestate/pages/callScreen.dart';
import 'package:realestate/pages/message.dart';
import 'package:realestate/pages/videoCall.dart';

class agentDetail extends StatefulWidget {
  agentDetail({Key? key}) : super(key: key);

  static const String page_id = "Agent Detail";

  @override
  _agentDetailState createState() => _agentDetailState();
}

class _agentDetailState extends State<agentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Explore More',
            style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
          ),
          style: greenButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Agent Detail',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_on),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 20)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(40),
                      child: FittedBox(
                        child: Image(
                            image: AssetImage('assets/images/profile.jpg')),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Jaydeep Hirani',
                              style: headText(),
                            ),
                          ),
                          Text(
                            'Property Agent (New York)',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => videoCall()));
                                },
                                icon: Icon(
                                  Icons.videocam,
                                  color: appColor,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => callScreen()));
                                },
                                icon: Icon(
                                  Icons.call,
                                  color: appColor,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => message()));
                                },
                                icon: Icon(
                                  Icons.chat,
                                  color: appColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'House On Rent',
                  style: headText(),
                ),
                Text('View All')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            houseRent(),
            houseRent(),
            houseRent(),
            houseRent(),
          ],
        ),
      ),
    );
  }

  Widget houseRent() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/main.jpg'),
                    fit: BoxFit.cover)),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Blue Ocean',
                        style: TextStyle(fontFamily: 'medium', fontSize: 16),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  Text('Blue Smith 74'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ratingContainer(),
                      Text(
                        '\$2500/m',
                        style: TextStyle(color: appColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Details'),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: appColor,
                            onPrimary: Colors.white,
                            minimumSize: const Size.fromHeight(35),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Contact'),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: appColor.withOpacity(0.2),
                            onPrimary: appColor,
                            minimumSize: const Size.fromHeight(35),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
