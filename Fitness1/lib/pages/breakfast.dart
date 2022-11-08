/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness/pages/recipes.dart';
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;

class breakfast extends StatefulWidget {
  breakfast({Key? key}) : super(key: key);

  static const String page_id = "Breakfast";

  @override
  _breakfastState createState() => _breakfastState();
}

class _breakfastState extends State<breakfast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Breakfast',
        style: style.headText(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Search Pancake',
                        prefixIcon: Icon(Icons.search, color: Colors.black54),
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.format_align_left_rounded,
                    color: Colors.black54,
                    size: 30,
                  ),
                ],
              ),
            ),
            Text(
              'Category',
              style: style.headText(),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  category(style.appColor, 'assets/images/salad.png', 'Salad'),
                  category(style.secondaryColor, 'assets/images/pancake.png',
                      'Cake'),
                  category(style.appColor, 'assets/images/salad.png', 'Salad'),
                  category(style.secondaryColor, 'assets/images/pancake.png',
                      'Cake'),
                  category(style.appColor, 'assets/images/salad.png', 'Salad'),
                  category(style.secondaryColor, 'assets/images/pancake.png',
                      'Cake'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Recommendattion \n for Diet',
              style: style.headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  recommendation('Honey Pancake', style.appColor),
                  recommendation('Honey Pancake', style.secondaryColor),
                  recommendation('Honey Pancake', style.appColor),
                  recommendation('Honey Pancake', style.secondaryColor),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Popular',
              style: style.headText(),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                children: [
                  ClipRRect(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(25),
                      child: FittedBox(
                        child: Image.asset('assets/images/pancake.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bluberry Pancake',
                            style: style.mediumText(),
                          ),
                          Text(
                            'Medium | 30mins | 230kCal',
                            style: style.simpleText(),
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    color: style.secondaryColor,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                children: [
                  ClipRRect(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(25),
                      child: FittedBox(
                        child: Image.asset('assets/images/pancake.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Salmona Nigiri',
                            style: style.mediumText(),
                          ),
                          Text(
                            'Medium | 30mins | 230kCal',
                            style: style.simpleText(),
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    color: style.secondaryColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget category(color, image, name) {
    return Container(
      height: 120,
      width: 85,
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color.withOpacity(0.4)),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(name)
        ],
      ),
    );
  }

  Widget recommendation(name, color) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color.withOpacity(0.4),
      ),
      child: Column(
        children: [
          ClipRRect(
            child: SizedBox.fromSize(
              size: Size.fromRadius(50),
              child: FittedBox(
                child: Image.asset('assets/images/pancake.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            name,
            style: style.mediumText(),
          ),
          SizedBox(
            height: 5,
          ),
          Text('Easy | 30mins | 180kCal'),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                'View',
                style: TextStyle(fontSize: 14, fontFamily: 'medium'),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => recipes()));
            },
          )
        ],
      ),
    );
  }
}
