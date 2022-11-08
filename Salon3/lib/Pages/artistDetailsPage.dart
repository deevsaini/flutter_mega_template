/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:slon3/Pages/selectServicesPage.dart';
import 'package:slon3/Utilities/constancePage.dart' as style;

class artistDetailsPage extends StatefulWidget {
  artistDetailsPage({Key? key}) : super(key: key);

  static const String pageId = 'artistDetailsPage';

  @override
  State<artistDetailsPage> createState() => _artistDetailsPageState();
}

class _artistDetailsPageState extends State<artistDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      flexibleSpace: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Your Appointment With',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(
                  Icons.close_sharp,
                  color: style.appColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildName(),
          _buildBooking(),
          _buildTitle('Friday, Aug 16'),
          _buildChipContent(),
          _buildTitle('Saturday, Aug 17'),
          _buildChipContent(),
          _buildTitle('Saturday, Aug 18'),
          _buildChipContent(),
        ],
      ),
    );
  }

  Widget _buildName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Shayra Alam',
          style: TextStyle(
              color: style.appColor, fontSize: 17, fontFamily: 'bold'),
        ),
      ],
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$txt',
            style: TextStyle(fontSize: 17, fontFamily: 'bold'),
          ),
        ],
      ),
    );
  }

  Widget _buildChipContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Wrap(
            children: [
              _chip('11:00 AM'),
              _chipColorfull('11:00 AM'),
              _chip('11:00 AM'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _chip(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Chip(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.white,
        label: Text(
          '$txt',
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  Widget _chipColorfull(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Chip(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: style.appColor,
        label: Text(
          '$txt',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget _buildBooking() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Subcategories Type',
                    style: TextStyle(fontFamily: 'bold'),
                  ),
                  Text(
                    'Rs. 200 for 20 Min.',
                    style: TextStyle(
                        fontFamily: 'bold', fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => selectServicesPage()));
                },
                child: Container(
                  height: 35,
                  width: 80,
                  decoration: style.contentButtonStyle(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Book',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
