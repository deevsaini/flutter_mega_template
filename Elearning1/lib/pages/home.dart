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
import 'package:elearn/pages/courseDetail.dart';
import 'package:elearn/pages/topCourses.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  static const String page_id = "Home";

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
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
      automaticallyImplyLeading: false,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.window_rounded)),
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
        IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => cart()));
            },
            icon: Icon(Icons.shopping_cart_outlined))
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            searchbar(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 160,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/home.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'A Real-World',
                    style: TextStyle(
                        fontFamily: 'semi-bold',
                        fontSize: 22,
                        color: Colors.white,
                        height: 1.2),
                  ),
                  Text(
                    'Experiance!!!',
                    style: TextStyle(
                        fontFamily: 'semi-bold',
                        fontSize: 22,
                        color: Colors.white,
                        height: 1.2),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: appColor, width: 2))),
                        child: Text(
                          'Explore',
                          style: TextStyle(fontSize: 22, color: appColor),
                        ),
                      ),
                      Icon(
                        Icons.arrow_right_alt_outlined,
                        color: appColor,
                      )
                    ],
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
                  'Categories',
                  style: headText(),
                ),
                Row(
                  children: [
                    Text(
                      'SEE ALL',
                      style: TextStyle(color: Colors.teal),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: Colors.teal,
                      size: 20,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  categoryContainer('Design'),
                  categoryContainer('Development'),
                  categoryContainer('Business'),
                  categoryContainer('Design'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  categoryContainer('IT & Software'),
                  categoryContainer('Health & Fitness'),
                  categoryContainer('Business'),
                  categoryContainer('Design'),
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
                  'Top Courses',
                  style: headText(),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => topCourses()));
                  },
                  child: Row(
                    children: [
                      Text(
                        'SEE ALL',
                        style: TextStyle(color: Colors.teal),
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Colors.teal,
                        size: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  courses(),
                  courses(),
                  courses(),
                  courses(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget categoryContainer(text) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: Text(text),
    );
  }

  Widget courses() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => courseDetail()));
      },
      child: Container(
        margin: EdgeInsets.only(right: 20),
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 200,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/home.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: appColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('BEST SELLER'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
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
            Text(
              'Generator on there internet tend',
              style: headText(),
            ),
            Row(
              children: [
                Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Stephen Moris')
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '\$14.50',
              style: TextStyle(
                  color: Colors.teal, fontFamily: 'medium', fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
