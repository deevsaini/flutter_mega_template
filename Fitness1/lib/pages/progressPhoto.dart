/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness/helper/style.dart' as style;
import 'package:flutter/material.dart';

class progressPhoto extends StatefulWidget {
  progressPhoto({Key? key}) : super(key: key);

  static const String page_id = "Progress Photo";

  @override
  _progressPhotoState createState() => _progressPhotoState();
}

class _progressPhotoState extends State<progressPhoto> {
  List<int> images = [1, 2, 3, 4, 5, 6, 7, 8];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: style.secondaryColor,
        child: Icon(Icons.local_see_outlined),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        'Progress Photo',
        style: style.headText(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 241, 213, 213),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            child: Image.asset(
                              'assets/images/reminder.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Reminder!',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontFamily: 'semi-bold'),
                                ),
                                Text(
                                  'Next Photos fall on July 08',
                                  style: TextStyle(fontFamily: 'medium'),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(
                          Icons.close,
                          size: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: style.appColor.withOpacity(0.4),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Track your progress Each \n Month With',
                            style: TextStyle(
                              fontFamily: 'regular',
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Photo',
                                style: TextStyle(
                                    fontFamily: 'medium',
                                    color: style.appColor,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        style.elevatedButton('Learn more')
                      ],
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        'assets/images/track.png',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: style.appColor.withOpacity(0.4),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Compare my photo',
                      style: style.mediumText(),
                    ),
                    style.elevatedButton('Compare')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Gallery',
                  style: style.headText(),
                ),
                Text(
                  'See more',
                  style: style.simpleText(),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '2 June',
              style: style.simpleText(),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  slideGallery(),
                  for (var i in images) slideGallery(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '5 May',
              style: style.simpleText(),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  slideGallery(),
                  for (var i in images) slideGallery(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget slideGallery() {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox.fromSize(
              size: Size.fromRadius(55),
              child: FittedBox(
                child: Image.asset('assets/images/man.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
