/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/gestures.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart' as style;
import 'package:salon/pages/bookDateTime.dart';
import 'package:salon/pages/call.dart';

class salonSpecialist extends StatefulWidget {
  salonSpecialist({Key? key}) : super(key: key);

  static const String page_id = "Salon Specialist";

  @override
  _salonSpecialistState createState() => _salonSpecialistState();
}

class _salonSpecialistState extends State<salonSpecialist> {
  int segmentedControlGroupValue = 0;
  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text("Gallery"),
    1: Text("Portfolio"),
    2: Text("Review"),
  };

  List<String> images = [
    'assets/images/profile.webp',
    'assets/images/voucher.webp',
    'assets/images/package.jpg',
    'assets/images/men.jpg',
    'assets/images/profile.webp',
    'assets/images/voucher.webp',
    'assets/images/package.jpg',
    'assets/images/men.jpg',
    'assets/images/profile.webp',
    'assets/images/voucher.webp',
    'assets/images/package.jpg',
    'assets/images/men.jpg',
  ];

  List<int> review = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: _buildAppbar(),
      body: SafeArea(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      image: AssetImage('assets/images/profile.webp'),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 30),
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
                            icon: Icon(Icons.favorite_border_outlined),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(40),
                          child: FittedBox(
                            child: Image(
                                image: AssetImage('assets/images/g1.jpg')),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kathryn Murphy',
                            style: style.boldText(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Hair stylist at ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'medium'),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' Bella Rinova',
                                  style: TextStyle(
                                      fontFamily: 'semi-bold',
                                      color: style.appColor),
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap = () {},
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber.shade600,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber.shade600,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber.shade600,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber.shade600,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey.shade300,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '(26 reviews)',
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.chat_bubble_outline),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Chat',
                            style: style.simpleText(),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => callScreen()));
                        },
                        child: Column(
                          children: [
                            Icon(Icons.call_outlined),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Call',
                              style: style.simpleText(),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(Icons.video_call_outlined),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Video',
                            style: style.simpleText(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => bookDateTime()));
                          },
                          child: Text('Book'),
                          style: ElevatedButton.styleFrom(
                              primary: style.appColor,
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry Lorem Ipsum has been the industry ...Read more',
                    style: TextStyle(letterSpacing: 1.1),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSegment(),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(children: [
                          if (segmentedControlGroupValue == 0)
                            galleryContainer()
                          else if (segmentedControlGroupValue == 1)
                            portfolioContainer()
                          else if (segmentedControlGroupValue == 2)
                            reviewContainer()
                        ]),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return SizedBox(
      width: double.infinity,
      child: CupertinoSlidingSegmentedControl(
        groupValue: segmentedControlGroupValue,
        children: myTabs,
        onValueChanged: (i) {
          this.setState(() {
            segmentedControlGroupValue = i.hashCode;
          });
        },
      ),
    );
  }

  Widget galleryContainer() {
    return GridView.count(
      primary: false,
      crossAxisCount: 3,
      shrinkWrap: true,
      childAspectRatio: 90 / 100,
      padding: EdgeInsets.only(top: 16, bottom: 16),
      children: List.generate(images.length, (index) {
        return Container(
          child: Stack(
            children: <Widget>[
              Container(
                  height: double.infinity,
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(images[index]), fit: BoxFit.cover),
                    ),
                  )),
            ],
          ),
        );
      }),
    );
  }

  Widget portfolioContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
    );
  }

  Widget reviewContainer() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Write your review'),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber.shade600,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber.shade600,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(Icons.image_outlined),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Leave your experience...',
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.near_me_outlined,
                color: style.appColor,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(35),
                      child: FittedBox(
                        child: Image(image: AssetImage('assets/images/g2.jpg')),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(35),
                      child: FittedBox(
                        child: Image(image: AssetImage('assets/images/g2.jpg')),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'All review (76)',
            style: TextStyle(fontFamily: 'semi-bold'),
          ),
          SizedBox(
            height: 20,
          ),
          for (var i in review) reviewLoop(),
        ],
      ),
    );
  }

  Widget reviewLoop() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/g1.jpg'),
              radius: 20,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jaydeep Hirani',
                      style: TextStyle(fontFamily: 'semi-bold'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber.shade600,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber.shade600,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber.shade600,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber.shade600,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey.shade300,
                            size: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text(
              '2 days ago',
              style: TextStyle(fontFamily: 'semi-bold', color: Colors.grey),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
            'The people working here are just so nice and helpful and make you feel so comfortable !'),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
