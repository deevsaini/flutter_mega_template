/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness_app/pages/appointmentPage.dart';
import 'package:fitness_app/pages/searchPage.dart';
import 'package:fitness_app/pages/settingsPage.dart';
import 'package:fitness_app/pages/sideMenuPage.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/utilities/constancePage.dart' as style;

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  static const String pageId = 'profilePage';

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<int> text = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: myDrawer(),
        key: _scaffoldKey,
        drawerEnableOpenDragGesture: false,
        backgroundColor: Color(0xFF2D2D39),
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: sideMenuPage(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFF2D2D39),
      elevation: 0,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => _scaffoldKey.currentState?.openDrawer(),
            child: Icon(Icons.menu),
          ),
          Text(
            'Profile',
            style: TextStyle(
                fontFamily: 'bold', color: Colors.white, fontSize: 20),
          ),
          InkWell(
            onTap: () {
              //
            },
            child: Icon(Icons.map),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFF1D1F2B),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCategoriesContent(),
              Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => appointmentPage()));
                        },
                        child: Container(
                          height: 50,
                          decoration: style.contentButtonStyle2(),
                          child: Center(
                            child: Text(
                              'Book An Appointment',
                              style: TextStyle(
                                  fontFamily: 'bold', color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      child: Center(
                        child: Icon(Icons.call, color: style.appColor),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                    top: BorderSide(color: Colors.grey),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Likes',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          '3022',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Comments',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          '2703',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Suggested',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          '1101',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _buildTitle2('Articles'),
              for (var i in text) _buildContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle2(txt) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$txt',
            style: TextStyle(
                fontFamily: 'bold', fontSize: 15, color: Colors.white),
          ),
          Text(
            'View All',
            style: TextStyle(fontSize: 13, color: style.appColor),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesContent() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox.fromSize(
                size: Size.fromRadius(40),
                child: FittedBox(
                  child: Image.asset('assets/images/6.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gustav Perplesove',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'bold',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      '30 Lessons',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,
                          color: Colors.white, size: 15),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Eastlake, Ohio, 44095',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox.fromSize(
              size: Size.fromRadius(40),
              child: FittedBox(
                child: Image.asset('assets/images/22.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gustav Perplesove',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'bold',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
