/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/answers.dart';
import 'package:flutter/material.dart';

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
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => answers()));
          },
          child: Text(
            'Answers',
            style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
          ),
          style: blueButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close)),
      title: Text(
        'Review',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {
            showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return bottomSheet();
                },
                isScrollControlled: true);
          },
          icon: Icon(Icons.bar_chart),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: '16/',
                    style: TextStyle(
                      fontFamily: 'regular',
                      color: Colors.red,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '20',
                        style: TextStyle(
                            fontFamily: 'medium',
                            color: appColor,
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text('You are right'),
                    Text(
                      '70%',
                      style: TextStyle(color: appColor),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text(
                      '12:00',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            resultContainer(),
            resultContainer(),
            resultContainer(),
            resultContainer(),
            resultContainer(),
            resultContainer(),
            resultContainer(),
          ],
        ),
      ),
    );
  }

  Widget resultContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300, blurRadius: 30),
              ],
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/check.png',
                  height: 35,
                  width: 35,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Question 1',
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300, blurRadius: 30),
              ],
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/mark3.png',
                  height: 35,
                  width: 35,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Question 2',
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300, blurRadius: 30),
              ],
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/check.png',
                  height: 35,
                  width: 35,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Question 3',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/review.png'),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Parameter details',
            style: headText(),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 150,
                child: Column(
                  children: [
                    Icon(
                      Icons.surround_sound,
                      size: 60,
                      color: appColor,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Listen',
                        style: TextStyle(
                          fontFamily: 'regular',
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' 100%',
                            style: TextStyle(
                                fontFamily: 'medium',
                                color: appColor,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 150,
                child: Column(
                  children: [
                    Icon(
                      Icons.surround_sound,
                      size: 60,
                      color: appColor,
                    ),
                    Text('Read 70%')
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 150,
                child: Column(
                  children: [
                    Icon(
                      Icons.surround_sound,
                      size: 60,
                      color: appColor,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Grammar',
                        style: TextStyle(
                          fontFamily: 'regular',
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' 100%',
                            style: TextStyle(
                                fontFamily: 'medium',
                                color: appColor,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 150,
                child: Column(
                  children: [
                    Icon(
                      Icons.surround_sound,
                      size: 60,
                      color: appColor,
                    ),
                    Text('Write 60%')
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Understood',
              style: TextStyle(fontFamily: 'medium', fontSize: 16),
            ),
            style: blueButton(),
          ),
        ],
      ),
    );
  }
}
