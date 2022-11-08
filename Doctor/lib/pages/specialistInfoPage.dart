/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor_marketplace_app/pages/appointmentPage.dart';
import 'package:flutter/material.dart';
import 'package:doctor_marketplace_app/utilities/constance.dart' as style;

class specialistInfoPage extends StatefulWidget {
  specialistInfoPage({Key? key}) : super(key: key);

  static const String pageId = 'specialistInfoPage';

  @override
  State<specialistInfoPage> createState() => _specialistInfoPageState();
}

class _specialistInfoPageState extends State<specialistInfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE7EFFA),
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildbottomNavigationBar(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        'Dr.Rahul Jograna',
        style: TextStyle(fontSize: 20, fontFamily: 'bold', color: Colors.black),
      ),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xFFE7EFFA), Colors.white]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Color(0xFFE7EFFA),
              ],
            )),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/4.png',
                    ),
                    fit: BoxFit.contain),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 15.0,
                ),
                label: Text('Voice Call'),
                onPressed: () {
                  print('Button Pressed');
                },
                style: ElevatedButton.styleFrom(
                  primary: style.appColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              ElevatedButton.icon(
                icon: Icon(
                  Icons.video_call,
                  color: Colors.white,
                  size: 15.0,
                ),
                label: Text('Video Call'),
                onPressed: () {
                  print('Button Pressed');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              ElevatedButton.icon(
                icon: Icon(
                  Icons.chat,
                  color: Colors.white,
                  size: 15.0,
                ),
                label: Text('Message'),
                onPressed: () {
                  print('Button Pressed');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Medicine & Heart Specialist',
                  style: TextStyle(fontFamily: 'bold', fontSize: 17),
                ),
                Text(
                  'Good Helth Clinic, MBBS, FCPS',
                  style: TextStyle(fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 12),
                      Icon(Icons.star, color: Colors.orange, size: 12),
                      Icon(Icons.star, color: Colors.orange, size: 12),
                      Icon(Icons.star, color: Colors.orange, size: 12),
                      Icon(Icons.star, color: Colors.orange, size: 12),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'About Rahul',
                    style: TextStyle(fontFamily: 'bold', fontSize: 17),
                  ),
                ),
                Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Petients',
                            style: TextStyle(
                                fontFamily: 'bold',
                                color: Colors.grey,
                                fontSize: 12),
                          ),
                          Text(
                            '1.08 K',
                            style: TextStyle(
                                fontFamily: 'bold',
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Experience',
                            style: TextStyle(
                                fontFamily: 'bold',
                                color: Colors.grey,
                                fontSize: 12),
                          ),
                          Text(
                            '8 Year',
                            style: TextStyle(
                                fontFamily: 'bold',
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Review',
                            style: TextStyle(
                                fontFamily: 'bold',
                                color: Colors.grey,
                                fontSize: 12),
                          ),
                          Text(
                            '2.05 K',
                            style: TextStyle(
                                fontFamily: 'bold',
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildbottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => appointmentPage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Book an Appointment',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
