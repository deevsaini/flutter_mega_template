/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart' as style;
import 'package:salon/pages/CompleteSalonDetail.dart';
import 'package:salon/pages/changeProfile.dart';
import 'package:salon/pages/faqs.dart';
import 'package:salon/pages/notification.dart';
import 'package:salon/pages/paymentMethod.dart';
import 'package:salon/pages/search.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  static const String page_id = "Home";

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  List<int> shop = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildSideMenu(),
      appBar: _buildAppbar(),
      body: _buildBody(context),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Builder(
                builder: ((context) => InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/profile.webp',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ))),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade300),
                    ),
                    child: SizedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notification_add,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade300),
                    ),
                    child: SizedBox(
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => search()));
                        },
                        icon: Icon(
                          Icons.search_outlined,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 250,
              child: Text(
                'Hi, Jenny Wilson',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
                style: style.boldText(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 18,
                  color: Colors.grey,
                ),
                InkWell(
                  onTap: () {
                    showBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 300,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Enable Location',
                                    style: style.headText(),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Image.asset(
                                    'assets/images/location.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'We need to know your location in order to suggest nearby services.',
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Enable',
                                      style: TextStyle(fontFamily: 'medium'),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF6D5AE7),
                                      onPrimary: Colors.white,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 16),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: SizedBox(
                    width: 250,
                    child: Text(
                      '6391 Elgin St Celina Deliware 10299',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style:
                          TextStyle(fontSize: 14, color: style.greyTextColor),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search by salons',
                      prefixIcon: Icon(Icons.search, color: Colors.black54),
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () => {},
                  icon: Icon(
                    Icons.segment,
                    color: Colors.black54,
                    size: 36,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Appointment',
                  style: style.headText(),
                ),
                Text(
                  'Today, Morning',
                  style: style.simpleText(),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.calendar_today_rounded),
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        'At The Galleria Hair Salon',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: style.mediumText(),
                      ),
                    ),
                    Text('09:00 AM'),
                  ],
                ),
                style: style.simpleButton(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Service',
                  style: style.headText(),
                ),
                Text(
                  'View All',
                  style: style.simpleText(),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  scrollService('assets/images/g1.jpg', 'Haircut'),
                  scrollService('assets/images/g2.jpg', 'Make up'),
                  scrollService('assets/images/g1.jpg', 'Manicure'),
                  scrollService('assets/images/g2.jpg', 'Make up'),
                  scrollService('assets/images/g1.jpg', 'haircut'),
                  scrollService('assets/images/g2.jpg', 'Manicure'),
                  scrollService('assets/images/g1.jpg', 'Make up'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '-40%',
                        style: style.boldText(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Voucher for you next \n haircut service',
                        style: style.simpleText(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Book now',
                          style: style.mediumText(),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF6D5AE7),
                          onPrimary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/voucher.webp',
                      height: 170,
                      width: 140,
                      fit: BoxFit.cover,
                    ),
                  ),
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
                  'Nearest Salon',
                  style: style.headText(),
                ),
                Text(
                  'View All',
                  style: style.simpleText(),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            for (var i in shop)
              style.shopDetail(() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => completeSalonDetail()));
              }),
          ],
        ),
      ),
    );
  }

  Widget scrollService(img, txt) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Container(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                img,
                height: 90,
                width: 90,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              txt,
              textAlign: TextAlign.center,
            ))
          ],
        ),
      ),
    );
  }

  //Side Menu
  Widget _buildSideMenu() {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/profile.webp',
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1, color: Colors.grey.shade300),
                          ),
                          child: SizedBox(
                            child: IconButton(
                              onPressed: () {
                                Scaffold.of(context).openEndDrawer();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => notification()));
                              },
                              icon: Icon(
                                Icons.notification_add,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1, color: Colors.grey.shade300),
                          ),
                          child: SizedBox(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Jaydeep Hirani',
                  style: style.headText(),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => changeProfile()));
                  },
                  icon: Icon(
                    Icons.edit_outlined,
                    color: style.appColor,
                  ),
                ),
              ],
            ),
            Text(
              'jaydeephirani@gmail.com',
              style: TextStyle(color: style.greyTextColor),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => paymentMethod()));
              },
              child: Row(
                children: [
                  Icon(Icons.credit_card),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Payment Method',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(Icons.history),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Payment History',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(Icons.lock_outline),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Change Password',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(Icons.people_outline),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Invite Friends',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => FAQs()));
              },
              child: Row(
                children: [
                  Icon(Icons.message_outlined),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'FAQs',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(Icons.help_outline),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'About Us',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(Icons.cancel_outlined),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Logout',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
