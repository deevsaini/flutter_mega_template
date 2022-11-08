/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:finance3_fluttermarketplace/utilities/constancePage.dart'
    as style;

class accountPage extends StatefulWidget {
  accountPage({Key? key}) : super(key: key);

  static const String pageId = 'accountPage';

  @override
  State<accountPage> createState() => _accountPageState();
}

class CurveImage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 30);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class _accountPageState extends State<accountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              _buildProfile(),
              Padding(
                padding: const EdgeInsets.only(
                    top: 200, bottom: 10, right: 10, left: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(30),
                                        child: FittedBox(
                                          child: Image.asset(
                                              'assets/images/c3.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Text(
                                          '15,085 point',
                                          style: TextStyle(
                                              fontFamily: 'bold',
                                              fontSize: 17,
                                              color: Colors.lightBlue),
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color: Colors.pink.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'PLATINUM MEMBERSHIP',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.pink),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  Icons.chevron_right,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          _buildTitle('WALLET MANAGEMENT'),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Column(
              children: [
                _buildContent(
                  'Date of birth',
                  '20/08/1999',
                ),
                _buildContent(
                  'Gender',
                  'Male',
                ),
                _buildContent(
                  'Address',
                  'Ho CHI Minh City',
                ),
                _buildContent(
                  'Identity',
                  '2254489488',
                ),
                _buildContent(
                  'Account type',
                  'Authenticated',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return ClipPath(
      clipper: CurveImage(),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: style.appColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(40),
                  child: FittedBox(
                    child: Image.asset('assets/images/c3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Text(
                'Jeremy Brewer',
                style: TextStyle(
                    fontSize: 20, color: Colors.white, fontFamily: 'bold'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Text(
                '+84 300 564 875',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 90),
              child: Text(
                'jeremybrewer@gmail.com',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Text(
            '$txt',
            style: TextStyle(fontSize: 17, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(txt1, txt2) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$txt1',
                style: TextStyle(fontSize: 17),
              ),
              Text(
                '$txt2',
                style: TextStyle(fontSize: 17, color: Colors.lightBlue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
