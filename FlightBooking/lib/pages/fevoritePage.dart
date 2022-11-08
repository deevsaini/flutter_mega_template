/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:travelo/pages/hotelBookingPage.dart';
import 'package:travelo/utilities/constantPage.dart' as style;

class fevoritePage extends StatefulWidget {
  fevoritePage({Key? key}) : super(key: key);

  static const String pageId = 'fevoritePage';

  @override
  State<fevoritePage> createState() => _fevoritePageState();
}

class _fevoritePageState extends State<fevoritePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF0F2F6),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildProfile(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
        image: DecorationImage(
            image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Favorite City',
                    style: TextStyle(
                        fontFamily: 'bold', color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    'Choose your favorite city and booking now',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(30),
                    child: FittedBox(
                      child: Image.asset('assets/images/c3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'India',
                      style: TextStyle(
                          fontFamily: 'bold',
                          color: Colors.black,
                          fontSize: 17),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 15),
                        Icon(Icons.star, color: Colors.orange, size: 15),
                        Icon(Icons.star, color: Colors.orange, size: 15),
                        Icon(Icons.star, color: Colors.orange, size: 15),
                        Icon(Icons.star, color: Colors.orange, size: 15),
                        SizedBox(width: 10),
                        Text('2.4')
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => hotelBookingPage()));
                  },
                  child: Container(
                    decoration: style.contentButtonStyle(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Center(
                        child: Text(
                          'Book',
                          style: TextStyle(
                              fontFamily: 'bold', color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
