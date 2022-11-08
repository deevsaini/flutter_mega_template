/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:flutter/material.dart';

class review extends StatefulWidget {
  review({Key? key}) : super(key: key);

  static const String page_id = "Review";

  @override
  _reviewState createState() => _reviewState();
}

class _reviewState extends State<review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Review',
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 40),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              starContainer(),
              Text(
                'PORSCHE 911 TURBO S',
                style: headText(),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'The show bring together the world\'s largest gathering',
                style: greyText(),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage('assets/images/men.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Jaydeep Hirani',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'RECENT REVIEWS',
                style: headText(),
              ),
              SizedBox(
                height: 30,
              ),
              reviewContainer(),
              reviewContainer(),
              reviewContainer()
            ],
          ),
        ),
      ),
    );
  }

  Widget reviewContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 30),
        ],
      ),
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              starContainer(),
              Text(
                '5 Min',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              )
            ],
          ),
          Text(
            'PORSCHE 911 TURBO S',
            style: headText(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'The show bring together the world\'s largest gathering',
            style: greyText(),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage('assets/images/men.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Jaydeep Hirani',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext Context) {
                            return replyContainer();
                          });
                    },
                    child: Icon(
                      Icons.message_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget replyContainer() {
    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      content: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                starContainer(),
                Text(
                  '5 Min',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
            Text(
              'PORSCHE 911 TURBO S',
              style: headText(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'The show bring together the world\'s largest gathering',
              style: greyText(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/images/men.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Jaydeep Hirani',
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'REPLY',
              style: TextStyle(color: Colors.grey),
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  border: UnderlineInputBorder(),
                  hintText: 'Type for reply'),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: appColor, borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'QUICK REPLY',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: appColor, width: 1)),
                  child: Text(
                    'GO TO DETAIL',
                    style: TextStyle(color: appColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
