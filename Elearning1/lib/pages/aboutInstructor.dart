/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/cart.dart';
import 'package:flutter/material.dart';

class aboutInstructer extends StatefulWidget {
  aboutInstructer({Key? key}) : super(key: key);

  static const String page_id = "About Instructer";

  @override
  _aboutInstructerState createState() => _aboutInstructerState();
}

class _aboutInstructerState extends State<aboutInstructer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      title: SizedBox(
        width: 250,
        child: Text(
          'Hi,Jaydeep Hirani',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          maxLines: 1,
          softWrap: false,
          style: headText(),
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchbar(),
            SizedBox(
              height: 30,
            ),
            Text(
              'About Instructer:',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/images/course.jpg'),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Stephen Moris',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: appColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                'BEST SELLER',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Top Rated Instructor',
                          style: TextStyle(color: Colors.teal),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('4.5'),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star_outline,
                              size: 20,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been text of the printing and Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been text of the printing and...'),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.insert_drive_file_outlined,
                  color: appColor,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('250 Courses Uploaded')
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.celebration_outlined,
                  color: appColor,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Best Seller Award')
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.thumb_up_outlined,
                  color: appColor,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('5+ Million Students Followed')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'OFFER PRICE : ',
                      style:
                          TextStyle(fontFamily: 'regular', color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' \$30.50',
                          style: TextStyle(
                            fontFamily: 'semi-bold',
                            fontSize: 32,
                            color: appColor,
                          ),
                        ),
                        TextSpan(
                          text: '  \$40.50',
                          style: TextStyle(
                              fontFamily: 'regular',
                              color: Colors.white,
                              decoration: TextDecoration.lineThrough),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => cart()));
                    },
                    child: Text(
                      'Buy Now',
                    ),
                    style: simpleButton(),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Add to Cart'),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: appColor)),
                    ),
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
