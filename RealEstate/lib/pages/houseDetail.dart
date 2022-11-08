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
import 'package:realestate/pages/agentDetail.dart';
import 'package:realestate/pages/booking.dart';
import 'package:realestate/pages/callScreen.dart';
import 'package:realestate/pages/message.dart';
import 'package:realestate/pages/videoCall.dart';

class houseDetail extends StatefulWidget {
  houseDetail({Key? key}) : super(key: key);

  static const String page_id = "House Details";

  @override
  _houseDetailState createState() => _houseDetailState();
}

class _houseDetailState extends State<houseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.white,
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/main.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 20),
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.notifications_on),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Xvilla Cottage House',
                        style: headText(),
                      ),
                      Text(
                        '\$570.0',
                        style: headText(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 18,
                      ),
                      Text('New York, USA')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      specification('assets/images/bed.png', '2 Rooms'),
                      specification('assets/images/toilet.png', '3 Toilet'),
                      specification('assets/images/kitchen.png', '2 Kitchen'),
                      specification('assets/images/parking.png', '2 Parking'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Description',
                    style: headText(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Photo Gallery',
                    style: headText(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        gallery('assets/images/main.jpg'),
                        gallery('assets/images/near1.jpg'),
                        gallery('assets/images/near2.jpg'),
                        gallery('assets/images/main.jpg'),
                        gallery('assets/images/near1.jpg'),
                        gallery('assets/images/near2.jpg'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                                  image:
                                      AssetImage('assets/images/profile.jpg')),
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
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                agentDetail()));
                                  },
                                  child: Text(
                                    'Jaydeep Hirani',
                                    style: headText(),
                                  ),
                                ),
                                Text(
                                  'Property Agent (New York)',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    videoCall()));
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
                                                builder: (context) =>
                                                    callScreen()));
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
                                                builder: (context) =>
                                                    message()));
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
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => booking()));
                    },
                    child: Text(
                      'Book Now',
                      style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
                    ),
                    style: greenButton(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget specification(img, text) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 20)],
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Image.asset(
            img,
            height: 25,
            width: 25,
            color: appColor,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: appColor, fontSize: 12),
          )
        ],
      ),
    );
  }

  Widget gallery(img) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
      ),
    );
  }
}
