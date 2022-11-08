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
import 'package:realestate/pages/bookDateTime.dart';
import 'package:realestate/pages/payment.dart';

class booking extends StatefulWidget {
  booking({Key? key}) : super(key: key);

  static const String page_id = "Booking";

  @override
  _bookingState createState() => _bookingState();
}

class _bookingState extends State<booking> {
  int selectID = 1;
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
                      image: AssetImage('assets/images/main.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          appColor.withOpacity(0.2), BlendMode.darken)),
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 20),
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              decoration: BoxDecoration(
                                  color: appColor,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                'On Rent Now',
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'medium'),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                'Xvilla Cottage',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: false,
                                style: TextStyle(
                                    fontFamily: 'semi-bold',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            ratingContainer(),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                Text(
                                  'New York, USA',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
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
                  Text(
                    'For Rent Now',
                    style: headText(),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20, top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 30,
                        )
                      ],
                    ),
                    child: TextField(
                      decoration: InputText('Full Name'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 30,
                        )
                      ],
                    ),
                    child: TextField(
                      decoration: InputText('Phone Number'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 30,
                        )
                      ],
                    ),
                    child: TextField(
                      decoration: InputText('Email'),
                    ),
                  ),
                  Text(
                    'Select Rent Plans',
                    style: headText(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildSelect(
                          'Monthly', '\$100/month', '75% Down Payment', 1),
                      _buildSelect(
                          'Yearly', '\$500/Yearly', '10% Down Payment', 2),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => bookdateTime()));
                    },
                    child: Text(
                      'Process to Payment',
                      style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
                    ),
                    style: greenButton(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSelect(plan, price, pay, id) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectID = id;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: segmentDecoration(id),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  plan,
                  style: TextStyle(
                      fontSize: 12,
                      color: selectID == id ? Colors.white : Colors.black),
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.check_circle_outline,
                  size: 20,
                  color: selectID == id ? Colors.amber : Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              price,
              style: TextStyle(
                  fontFamily: 'medium',
                  fontSize: 16,
                  color: selectID == id ? Colors.white : Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              pay,
              style: TextStyle(
                  fontSize: 12,
                  color: selectID == id ? Colors.white : Colors.black),
            )
          ],
        ),
      ),
    );
  }

  segmentDecoration(id) {
    return BoxDecoration(
      color: selectID == id ? appColor : Colors.transparent,
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    );
  }
}
