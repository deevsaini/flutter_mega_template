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

class paymentPage extends StatefulWidget {
  paymentPage({Key? key}) : super(key: key);

  static const String pageId = 'paymentPage';

  @override
  State<paymentPage> createState() => _paymentPageState();
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

class _paymentPageState extends State<paymentPage> {
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              _buildProfile(),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Select your method of payment below',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'bold'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildSlider('assets/images/c2.png'),
                          _buildSlider('assets/images/c2.png'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Text(
                  'Confirm the payment with face ID',
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
                Text(
                  'or tap here for other method',
                  style: TextStyle(color: Colors.lightBlue, fontSize: 17),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
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
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return FractionallySizedBox(
                            heightFactor: 0.3,
                            child: showBottomModal(),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(
                        Icons.face,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget showBottomModal() {
    late bool status = false;

    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'You\'re paying',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  color: style.appColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: Text(
                    '\$ 170.50',
                    style: TextStyle(fontSize: 20, color: style.appColor),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'at san fu lou cantonse - phan xich long',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSlider(img) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('$img'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfile() {
    return ClipPath(
      clipper: CurveImage(),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: style.appColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Back',
                          style: TextStyle(
                            fontFamily: 'bold',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Payments',
                    style: TextStyle(
                        fontSize: 17, color: Colors.white, fontFamily: 'bold'),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
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
