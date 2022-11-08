/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor_marketplace_app/pages/messagePage.dart';
import 'package:doctor_marketplace_app/pages/videoCallingPage.dart';
import 'package:flutter/material.dart';
import 'package:doctor_marketplace_app/utilities/constance.dart' as style;

class doctorPage extends StatefulWidget {
  doctorPage({Key? key}) : super(key: key);

  static const String pageId = 'doctorPage';

  @override
  State<doctorPage> createState() => _doctorPageState();
}

class _doctorPageState extends State<doctorPage> {
  int tabID = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 9,
        child: Scaffold(
          backgroundColor: Color(0xFFE7EFFA),
          appBar: _buildAppBar(),
          body: _buildBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xFFE7EFFA), Colors.white]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Available',
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    'Specialist',
                    style: TextStyle(fontSize: 20, fontFamily: 'bold'),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => messagePage()));
                    },
                    child: Icon(Icons.message),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottom: PreferredSize(
        child: const TabBar(
          isScrollable: true,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0, color: style.appColor),
              insets: EdgeInsets.symmetric(horizontal: 10.0)),
          tabs: [
            Tab(
              text: 'Pediatrician',
            ),
            Tab(
              text: 'Neurosurgeon',
            ),
            Tab(
              text: 'Cardiologist',
            ),
            Tab(
              text: 'Psychiatron',
            ),
            Tab(
              text: 'Pediatrician',
            ),
            Tab(
              text: 'Neurosurgeon',
            ),
            Tab(
              text: 'Cardiologist',
            ),
            Tab(
              text: 'Psychiatron',
            ),
            Tab(
              text: 'Pediatrician',
            ),
          ],
        ),
        preferredSize: Size.fromHeight(37.0),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          GridView.count(
            primary: false,
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: 100 / 100,
            children: [
              _buildSpecialist('Dr.Serena Gome', 'Medicine Specialit', '8 Year',
                  '2.7K', AssetImage('assets/images/4.png')),
              _buildSpecialist('Dr.Rahul Jograna', 'Medicine Specialit',
                  '10 Year', '5.7K', AssetImage('assets/images/9.png')),
              _buildSpecialist('Dr.Hardik Rajput', 'Heart Specialit', '8 Year',
                  '3.7K', AssetImage('assets/images/4.png')),
              _buildSpecialist('Dr.Rose Milone', 'Medicine Specialit', '5 Year',
                  '1.0K', AssetImage('assets/images/5.png')),
              _buildSpecialist('Dr.Mausam Chavda', 'Medicine Specialit',
                  '7 Year', '2.7K', AssetImage('assets/images/6.png')),
              _buildSpecialist('Dr.Serena Gome', 'Medicine Specialit', '8 Year',
                  '2.7K', AssetImage('assets/images/7.png')),
              _buildSpecialist('Dr.Shailly Acharya', 'Medicine Specialit',
                  '8 Year', '2.7K', AssetImage('assets/images/7.png')),
              _buildSpecialist('Dr.Serena Gome', 'Medicine Specialit', '8 Year',
                  '2.7K', AssetImage('assets/images/7.png')),
              _buildSpecialist('Dr.Serena Gome', 'Medicine Specialit', '8 Year',
                  '2.7K', AssetImage('assets/images/7.png')),
              _buildSpecialist('Dr.Serena Gome', 'Medicine Specialit', '8 Year',
                  '2.7K', AssetImage('assets/images/7.png')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialist(txt1, txt2, txt3, txt4, img) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => videoCallingPage()));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 120,
                              child: Text(
                                '$txt1',
                                overflow: TextOverflow.ellipsis,
                                style:
                                    TextStyle(fontFamily: 'bold', fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: Text(
                                '$txt2',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 10),
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 10),
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 10),
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 10),
                                  Icon(Icons.star,
                                      color: Colors.orange, size: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Experience',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Text(
                              '$txt3',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontFamily: 'bold'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Petients',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Text(
                              '$txt4',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontFamily: 'bold'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              width: 100,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: img, fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
