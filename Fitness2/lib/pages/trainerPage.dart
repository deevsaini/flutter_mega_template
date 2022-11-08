/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness_app/pages/sideMenuPage.dart';
import 'package:fitness_app/pages/voiceCallingPage.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/utilities/constancePage.dart' as style;

class trainerPage extends StatefulWidget {
  const trainerPage({Key? key}) : super(key: key);

  static const String pageId = 'trainerPage';

  @override
  State<trainerPage> createState() => _trainerPageState();
}

class _trainerPageState extends State<trainerPage> {
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
            'Trainers',
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTitle('Online Personal Trainers'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildProfile(Image.asset('assets/images/1.jpg')),
                    buildProfile(Image.asset('assets/images/2.jpg')),
                    buildProfile(Image.asset('assets/images/3.jpg')),
                    buildProfile(Image.asset('assets/images/4.jpg')),
                    buildProfile(Image.asset('assets/images/3.jpg')),
                    buildProfile(Image.asset('assets/images/2.jpg')),
                    buildProfile(Image.asset('assets/images/1.jpg')),
                    buildProfile(Image.asset('assets/images/4.jpg')),
                    buildProfile(Image.asset('assets/images/2.jpg')),
                    buildProfile(Image.asset('assets/images/4.jpg')),
                    buildProfile(Image.asset('assets/images/1.jpg')),
                  ],
                ),
              ),
              _buildTitle('Nearby Personal Trainers'),
              for (var i in text) _buildCategoriesContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(children: [
        Text(
          '$txt',
          style:
              TextStyle(fontFamily: 'bold', fontSize: 15, color: Colors.white),
        ),
      ]),
    );
  }

  Widget buildProfile(img) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(
                width: 2,
                color: style.appColor,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(30),
                  child: FittedBox(
                    child: img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 3,
            bottom: 3,
            child: Container(
              height: 15,
              width: 15,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesContent() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF2D2D39),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(40),
                  child: FittedBox(
                    child: Image.asset('assets/images/6.jpg'),
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
                      SizedBox(
                        width: 120,
                        child: Text(
                          'Nathaneal Down',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'bold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Text(
                          'Neafrology',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Neafrology',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => voiceCallingPage()));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.call_outlined,
                            color: style.appColor,
                            size: 15,
                          )),
                      Text(
                        '+34 567 890 123',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      decoration: style.contentButtonStyle2(),
                      child: Center(
                        child: Text(
                          'Follow',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
