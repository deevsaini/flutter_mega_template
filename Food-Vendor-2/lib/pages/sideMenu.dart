/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:zomato/helper/style.dart';
import 'package:zomato/pages/allTickets.dart';
import 'package:zomato/pages/categories.dart';
import 'package:zomato/pages/contactDetails.dart';
import 'package:zomato/pages/customerComplaints.dart';
import 'package:zomato/pages/foods.dart';
import 'package:zomato/pages/orderHistory.dart';
import 'package:zomato/pages/tabs.dart';
import 'package:zomato/pages/updateTimings.dart';

class sideMenu extends StatefulWidget {
  sideMenu({Key? key}) : super(key: key);

  static const String page_id = "Side Menu";

  @override
  State<sideMenu> createState() => _sideMenuState();
}

class _sideMenuState extends State<sideMenu> {
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
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.close),
      ),
      title: Text(
        'Outlet Setting',
        style: headText(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/menu.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Thal Bhog',
                          style: headText(),
                        ),
                        Text(
                          'North Indian',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online Ordering',
                  style: TextStyle(fontSize: 16, fontFamily: 'medium'),
                ),
                SizedBox(
                  height: 10,
                ),
                rowContainer(Icons.access_time, 'Scheule off-time in advance',
                    () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => updateTimings()));
                }),
                rowContainer(Icons.grid_view_outlined, 'Categories', () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => categories()));
                }),
                rowContainer(Icons.local_restaurant_outlined, 'Foods', () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => foods()));
                }),
                rowContainer(Icons.description_outlined, 'Order History', () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => orderHistory()));
                }),
                rowContainer(Icons.access_time, 'Customer Complaints', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => customerComplaints()));
                }),
                rowContainer(Icons.airplane_ticket_outlined, 'All Tickets', () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => allTickets()));
                }),
                rowContainer(Icons.phone_outlined, 'Contact Detail', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => contactDetails()));
                }),
                rowContainer(Icons.help_outline_outlined, 'Support', () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => tabs()));
                }),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => tabs()));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.power_settings_new,
                          color: Colors.grey,
                          size: 20,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Logout',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget rowContainer(icon, text, route) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey),
        ),
      ),
      child: InkWell(
        onTap: route,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.grey,
              size: 20,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            IconButton(
              onPressed: route,
              icon: Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
