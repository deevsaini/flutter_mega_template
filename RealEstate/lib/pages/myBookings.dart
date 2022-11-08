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

class myBookings extends StatefulWidget {
  myBookings({Key? key}) : super(key: key);

  static const String page_id = "My Bookings";

  @override
  _myBookingsState createState() => _myBookingsState();
}

class _myBookingsState extends State<myBookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'My Bookings',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Booking List',
              style: headText(),
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
