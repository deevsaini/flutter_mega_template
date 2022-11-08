/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:hotelbooking/pages/favourite.dart';
import 'package:hotelbooking/pages/profile-settings.dart';
import 'package:hotelbooking/pages/settings.dart';
import '../helper/style.dart' as style;

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key, Title? title}) : super(key: key);
  final String title = '';
  static const String page_id = 'Profile';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Item> options = <Item>[
    Item('assets/images/building.png', 'Favourite Hotels'),
    Item('assets/images/chat.png', 'Contact us'),
    Item('assets/images/app-store.png', 'Like us on Appstore'),
    Item('assets/images/settings.png', 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('My Profile'),
        titleTextStyle: style.pageTitleText(),
        flexibleSpace: Container(
          decoration: style.appBarDecoration(),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: _buildBody(context),
      bottomNavigationBar: _buildBottomContainer(),
    );
  }

  Widget _buildBody(context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    height: 300.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/back.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.elliptical(
                              MediaQuery.of(context).size.width, 90)),
                    ),
                  ),
                ),
                Positioned(
                    top: 230,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 70,
                      child: CircleAvatar(
                        radius: 64,
                        backgroundImage: AssetImage('assets/images/user.jpg'),
                      ),
                    )),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 80, bottom: 20),
              child: Column(
                children: [
                  Text(
                    'Michel Jackson',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontFamily: 'semi-bold'),
                  ),
                  SizedBox(height: 30),
                  GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    childAspectRatio: 100 / 80,
                    children: List.generate(options.length, (index) {
                      return _buildSingleOptions(options[index]);
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSingleOptions(option) {
    return Container(
      child: InkWell(
        onTap: () {
          if (option.title == 'Favourite Hotels') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new FavouritePage()));
          }
          if (option.title == 'Settings') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SettingsPage()));
          }
        },
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Center(
                  child: Text(
                    option.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'semi-bold', fontSize: 15),
                  ),
                ),
              ),
              Positioned(
                  top: -25,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [style.appColor, style.appColor2],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    child: Center(
                      child: Image.asset(option.img, width: 24),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 10,
            blurRadius: 5,
            offset: Offset(0, 7), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(width: 1, color: (Colors.grey[300])!))),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text('Legal Information',
                textAlign: TextAlign.center, style: btnText()),
          )),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text('Privacy Policy',
                textAlign: TextAlign.center, style: btnText()),
          )),
        ],
      ),
    );
  }

  btnText() {
    return TextStyle(fontSize: 16, fontFamily: 'semi-bold');
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Item {
  Item(this.img, this.title);
  final String img;
  final String title;
}
