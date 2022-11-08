/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:finance3_fluttermarketplace/pages/tabBarPage.dart';
import 'package:flutter/material.dart';
import 'package:finance3_fluttermarketplace/utilities/constancePage.dart'
    as style;

class selectCategorisPage extends StatefulWidget {
  selectCategorisPage({Key? key}) : super(key: key);

  static const String pageId = 'selectCategorisPage';

  @override
  State<selectCategorisPage> createState() => _selectCategorisPageState();
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

class _selectCategorisPageState extends State<selectCategorisPage> {
  int tabID = 1;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
        bottomNavigationBar: _buildbottomNavigationBar(),
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
              if (tabID == 1) _fistContent() else if (tabID == 2) Container()
            ],
          ),
        ],
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
                    'Select Categories',
                    style: TextStyle(
                        fontSize: 17, color: Colors.white, fontFamily: 'bold'),
                  ),
                  Text(
                    'Add New',
                    style: TextStyle(
                      fontFamily: 'bold',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            _buildSegment(),
          ],
        ),
      ),
    );
  }

  Widget _fistContent() {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Container(
        width: double.infinity,
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              _buildContentHeading(Colors.pinkAccent.withOpacity(0.2),
                  Icons.restaurant, 'Food & Beverage'),
              _buildContentSubHeading(
                  Icons.hotel, Colors.pinkAccent, 'Restaurant'),
              _buildContentSubHeading(
                  Icons.coffee, Colors.pinkAccent, 'Coffee Shop'),
              _buildContentSubHeading(
                  Icons.fastfood, Colors.pinkAccent, 'Fast Food'),
              _buildContentSubHeading(
                  Icons.wine_bar, Colors.pinkAccent, 'Beer & Wine'),
              _buildContentHeading2(style.appColor.withOpacity(0.2),
                  Icons.airplane_ticket, 'Entertainment'),
              _buildContentSubHeading(
                  Icons.movie, style.appColor, 'Cinema Movie'),
              _buildContentSubHeading(
                  Icons.music_note, style.appColor, 'Music'),
              _buildContentSubHeading(Icons.games, style.appColor, 'Games'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContentHeading(bgclr, icn, txt) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: bgclr,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                icn,
                color: Colors.pinkAccent,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '$txt',
              style: TextStyle(color: Colors.pinkAccent, fontSize: 18),
            ),
          ],
        ),
        Checkbox(
          checkColor: Colors.white,
          activeColor: style.appColor,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
      ],
    );
  }

  Widget _buildContentHeading2(bgclr, icn, txt) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: bgclr,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                icn,
                color: style.appColor,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '$txt',
              style: TextStyle(color: style.appColor, fontSize: 18),
            ),
          ],
        ),
        Checkbox(
          checkColor: Colors.white,
          activeColor: style.appColor,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
      ],
    );
  }

  Widget _buildContentSubHeading(icn, icnclr, txt) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icn,
                color: icnclr,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '$txt',
              ),
            ],
          ),
          Checkbox(
            checkColor: Colors.white,
            activeColor: style.appColor,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  tabID = 1;
                });
              },
              child: Container(
                decoration: segmentDecoration(1),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Center(child: Text('EXPENSE', style: segmentText(1))),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 2;
                  });
                },
                child: Container(
                  decoration: segmentDecoration(2),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Center(child: Text('INCOME', style: segmentText(2))),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
      color: tabID == val ? Colors.white.withOpacity(0.3) : Colors.transparent,
      borderRadius: BorderRadius.circular(5),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: 'bold', color: tabID == val ? Colors.white : Colors.white);
  }

  Widget _buildbottomNavigationBar() {
    return Padding(
      padding:
          const EdgeInsets.only(top: 20.0, bottom: 20, right: 20, left: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => tabBarPage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Done',
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
